# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="Web Server vulnerability scanner."
HOMEPAGE="http://www.cirt.net/code/nikto.shtml"
SRC_URI="http://www.cirt.net/source/nikto/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ssl"

DEPEND="dev-lang/perl
		net-analyzer/nmap
		ssl? (
			dev-libs/openssl
			dev-perl/Net-SSLeay
		)
		>=net-libs/libwhisker-2.5"

RDEPEND="${DEPEND}"

src_prepare() {
	rm plugins/LW2.pm || die "removing bundled lib LW2.pm failed"
	epatch "${FILESDIR}"/"${PF}"-PL.patch || die "patch failed"
}

src_install() {

	dodir /etc/nikto || die "dodir failed"
	insinto /etc/nikto
	doins "${FILESDIR}"/nikto.conf || die "doins failed"

	dobin nikto.pl || die "dobin failed"
	insinto /usr/bin
	doins nikto.pl || die "doins failed"

	dodir /var/lib/nikto || die "dodir failed"
	insinto /var/lib/nikto
	doins -r templates plugins || die "doins failed"

	dodoc docs/*.txt || die "dodoc failed"
	dohtml docs/nikto_manual.html || die "dohtml failed"
	doman docs/nikto.1 || die "doman failed"
	insinto /usr/share/doc/"${PF}" docs/nikto.dtd || die "doins failed"
}

pkg_postinst() {
	elog 'Default configuration file is "/etc/nikto/nikto.conf"'
	elog 'To test "perl /usr/bin/nikto.pl -h 192.168.0.1"'
	elog 'This will scan the IP 192.168.0.1 on TCP port 80'
}
