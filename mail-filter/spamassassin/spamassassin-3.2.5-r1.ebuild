# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit perl-module eutils

MY_P=Mail-SpamAssassin-${PV//_/-}
S=${WORKDIR}/${MY_P}

DESCRIPTION="SpamAssassin is an extensible email filter which is used to identify spam."
HOMEPAGE="http://spamassassin.apache.org/"
SRC_URI="http://archive.apache.org/dist/spamassassin/source/${MY_P}.tar.bz2"
SRC_TEST="do"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="berkdb qmail ssl doc ldap mysql postgres sqlite tools ipv6"

DEPEND=">=dev-lang/perl-5.8.2-r1
	virtual/perl-MIME-Base64
	>=virtual/perl-PodParser-1.32
	virtual/perl-Storable
	virtual/perl-Time-HiRes
	>=dev-perl/HTML-Parser-3.43
	>=dev-perl/Net-DNS-0.53
	dev-perl/Digest-SHA1
	dev-perl/libwww-perl
	>=virtual/perl-Archive-Tar-1.26
	app-crypt/gnupg
	>=virtual/perl-IO-Zlib-1.04
	>=dev-util/re2c-0.12.0
	ssl? (
		dev-perl/IO-Socket-SSL
		dev-libs/openssl
	)
	berkdb? (
		virtual/perl-DB_File
	)
	ldap? ( dev-perl/perl-ldap )
	mysql? (
		dev-perl/DBI
		dev-perl/DBD-mysql
	)
	postgres? (
		dev-perl/DBI
		dev-perl/DBD-Pg
	)
	sqlite? (
		dev-perl/DBI
		dev-perl/DBD-SQLite
	)
	ipv6? (
		dev-perl/IO-Socket-INET6
	)"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/${PN}-3.2.5-DESTDIR.patch" )

src_configure() {
	# - Set SYSCONFDIR explicitly so we can't get bitten by bug 48205 again
	#	(just to be sure, nobody knows how it could happen in the first place).
	myconf="SYSCONFDIR=/etc DATADIR=/usr/share/spamassassin"

	# If ssl is enabled, spamc can be built with ssl support
	if use ssl; then
		myconf+=" ENABLE_SSL=yes"
	else
		myconf+=" ENABLE_SSL=no"
	fi

	# Set the path to the Perl executable explictly.  This will be used to
	# create the initial sharpbang line in the scripts and might cause
	# a versioned app name end in there, see
	# <http://bugs.gentoo.org/show_bug.cgi?id=62276>
	myconf+=" PERL_BIN=/usr/bin/perl"

	# Add Gentoo tag to make it easier for the upstream devs to spot
	# possible modifications or patches.
	version_tag="g${PV:6}${PR}"
	version_str="${PV//_/-}-${version_tag}"

	# Create the Gentoo config file before Makefile.PL is called so it
	# is copied later on.
	echo "version_tag ${version_tag}" > rules/11_gentoo.cf

	# Setting the following env var ensures that no questions are asked.
	perl-module_src_configure
}

src_compile() {
	# Run the autoconf stuff now, just to make the build sequence look more
	# familiar to the user :)  Plus feeding the VERSION_STRING skips some
	# calls to Perl.
	make spamc/Makefile VERSION_STRING="${version_str}" || die

	# Now compile all the stuff selected.
	perl-module_src_compile

	if use qmail; then
		make spamc/qmail-spamc || die "building qmail-spamc failed"
	fi

	if use doc; then
		make text_html_doc || die
	fi
}

src_install () {
	perl-module_src_install

	# Create the stub dir used by sa-update and friends
	dodir /var/lib/spamassassin || die

	# Move spamd to sbin where it belongs.
	dodir /usr/sbin
	mv "${D}"/usr/{bin,sbin}/spamd || die

	if use qmail; then
		dobin spamc/qmail-spamc || die
	fi

	dosym /etc/mail/spamassassin /etc/spamassassin || die

	# Disable plugin by default
	sed -i -e 's/^loadplugin/\# &/g' "${D}"/etc/mail/spamassassin/init.pre || die

	# Add the init and config scripts.
	newinitd "${FILESDIR}"/3.0.0-spamd.init spamd || die
	newconfd "${FILESDIR}"/3.0.0-spamd.conf spamd || die

	if use doc; then
		dodoc NOTICE TRADEMARK CREDITS INSTALL.VMS UPGRADE USAGE \
		sql/README.bayes sql/README.awl procmailrc.example sample-nonspam.txt \
		sample-spam.txt spamassassin.spec spamd/PROTOCOL spamd/README.vpopmail \
		spamd-apache2/README.apache || die

		# Rename some docu files so they don't clash with others
		newdoc spamd/README README.spamd || die
		newdoc sql/README README.sql || die
		newdoc ldap/README README.ldap || die

		dohtml doc/*.html || die
		docinto sql
		dodoc sql/*.sql || die

		if use qmail; then
			dodoc spamc/README.qmail || die
		fi
	fi

	# Install provided tools. See bug 108168
	if use tools; then
		docinto tools
		dodoc tools/* || die "dodoc failed"
	fi

	cp "${FILESDIR}"/secrets.cf "${D}"/etc/mail/spamassassin/secrets.cf.example || die
	fperms 0400 /etc/mail/spamassassin/secrets.cf.example

	cat <<-EOF > "${T}/local.cf.example"
		# Sensitive data, such as database connection info, should be stored in
		# /etc/mail/spamassassin/secrets.cf with appropriate permissions
	EOF

	insinto /etc/mail/spamassassin/
	doins "${T}/local.cf.example" || die
}

pkg_postinst() {
	elog "If you plan on using the -u flag to spamd, please read the notes"
	elog "in /etc/conf.d/spamd regarding the location of the pid file."
	elog "If you build ${PN} with optional dependancy support,"
	elog "you can enable them in /etc/mail/spamassassin/init.pre"
}
