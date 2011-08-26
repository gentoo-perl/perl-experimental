# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/eclass/perl-module.eclass,v 1.126 2010/07/15 11:44:48 tove Exp $
#
# Author: Seemant Kulleen <seemant@gentoo.org>

# @ECLASS: perl-module.eclass
# @MAINTAINER:
# perl@gentoo.org
# @BLURB: eclass for perl modules
# @DESCRIPTION:
# The perl-module eclass is designed to allow easier installation of perl
# modules, and their incorporation into the Gentoo Linux system.

inherit eutils base
[[ ${CATEGORY} == "perl-core" ]] && inherit alternatives

PERL_EXPF="src_unpack src_compile src_test src_install"

case "${EAPI:-0}" in
	0|1)
		PERL_EXPF+=" pkg_setup pkg_preinst pkg_postinst pkg_prerm pkg_postrm"
		;;
	2|3|4)
		PERL_EXPF+=" src_prepare src_configure"
		[[ ${CATEGORY} == "perl-core" ]] && \
			PERL_EXPF+=" pkg_postinst pkg_postrm"

		case "${GENTOO_DEPEND_ON_PERL:-yes}" in
			yes)
				DEPEND="dev-lang/perl[-build]"
				RDEPEND="${DEPEND}"
				;;
		esac
		;;
	*)
		die "EAPI=${EAPI} is not supported by perl-module.eclass"
		;;
esac

case "${PERL_EXPORT_PHASE_FUNCTIONS:-yes}" in
	yes)
		EXPORT_FUNCTIONS ${PERL_EXPF}
		;;
	no)
		debug-print "PERL_EXPORT_PHASE_FUNCTIONS=no"
		;;
	*)
		die "PERL_EXPORT_PHASE_FUNCTIONS=${PERL_EXPORT_PHASE_FUNCTIONS} is not supported by perl-module.eclass"
		;;
esac

DESCRIPTION="Based on the $ECLASS eclass"

LICENSE="${LICENSE:-|| ( Artistic GPL-1 GPL-2 GPL-3 )}"

if [[ -n ${MY_PN} || -n ${MY_PV} || -n ${MODULE_VERSION} ]] ; then
	: ${MY_P:=${MY_PN:-${PN}}-${MY_PV:-${MODULE_VERSION:-${PV}}}}
	S=${MY_S:-${WORKDIR}/${MY_P}}
fi

[[ -n ${MODULE_DZIL_TRIAL} ]] && S="${S%-TRIAL}"

[[ -z "${SRC_URI}" && -z "${MODULE_A}" ]] && \
	MODULE_A="${MY_P:-${P}}.${MODULE_A_EXT:-tar.gz}"
[[ -z "${SRC_URI}" && -n "${MODULE_AUTHOR}" ]] && \
	SRC_URI="mirror://cpan/authors/id/${MODULE_AUTHOR:0:1}/${MODULE_AUTHOR:0:2}/${MODULE_AUTHOR}/${MODULE_SECTION:+${MODULE_SECTION}/}${MODULE_A}"
[[ -z "${HOMEPAGE}" ]] && \
	HOMEPAGE="http://search.cpan.org/dist/${MY_PN:-${PN}}/"

SRC_PREP="no"
SRC_TEST="skip"
PREFER_BUILDPL="yes"

pm_echovar=""
perlinfo_done=false

perl-module_src_unpack() {
	debug-print-function $FUNCNAME "$@"
	base_src_unpack
	has src_prepare ${PERL_EXPF} || perl-module_src_prepare
}

perl-module_src_prepare() {
	debug-print-function $FUNCNAME "$@"
	has src_prepare ${PERL_EXPF} && base_src_prepare
	perl_fix_osx_extra
	esvn_clean
}

perl-module_src_configure() {
	debug-print-function $FUNCNAME "$@"
	perl-module_src_prep
}

perl-module_src_prep() {
	debug-print-function $FUNCNAME "$@"
	[[ ${SRC_PREP} = yes ]] && return 0
	SRC_PREP="yes"

	perl_set_version
	perl_set_eprefix

	[[ -z ${pm_echovar} ]] && export PERL_MM_USE_DEFAULT=1
	# Disable ExtUtils::AutoInstall from prompting
	export PERL_EXTUTILS_AUTOINSTALL="--skipdeps"

	if [[ $(declare -p myconf 2>&-) != "declare -a myconf="* ]]; then
		local myconf_local=(${myconf})
	else
		local myconf_local=("${myconf[@]}")
	fi

	if [[ ( ${PREFER_BUILDPL} == yes || ! -f Makefile.PL ) && -f Build.PL ]] ; then
		einfo "Using Module::Build"
		if [[ ${DEPEND} != *virtual/perl-Module-Build* && ${PN} != Module-Build ]] ; then
			eqawarn "QA Notice: The ebuild uses Module::Build but doesn't depend on it."
			eqawarn "           Add virtual/perl-Module-Build to DEPEND!"
			if [[ -n ${PERLQAFATAL} ]]; then
				eerror "Bailing out due to PERLQAFATAL=1";
				die;
			fi
		fi
		set -- \
			--installdirs=vendor \
			--libdoc= \
			--destdir="${D}" \
			--create_packlist=0 \
			"${myconf_local[@]}"
		einfo "perl Build.PL" "$@"
		perl Build.PL "$@" <<< "${pm_echovar}" \
				|| die "Unable to build!"
	elif [[ -f Makefile.PL ]] ; then
		einfo "Using ExtUtils::MakeMaker"
		set -- \
			PREFIX=${EPREFIX}/usr \
			INSTALLDIRS=vendor \
			INSTALLMAN3DIR='none' \
			DESTDIR="${D}" \
			"${myconf_local[@]}"
		einfo "perl Makefile.PL" "$@"
		perl Makefile.PL "$@" <<< "${pm_echovar}" \
				|| die "Unable to build!"
	fi
	if [[ ! -f Build.PL && ! -f Makefile.PL ]] ; then
		einfo "No Make or Build file detected..."
		return
	fi
}

perl-module_src_compile() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version

	has src_configure ${PERL_EXPF} || perl-module_src_prep

	if [[ $(declare -p mymake 2>&-) != "declare -a mymake="* ]]; then
		local mymake_local=(${mymake})
	else
		local mymake_local=("${mymake[@]}")
	fi

	if [[ -f Build ]] ; then
		./Build build \
			|| die "Compilation failed"
	elif [[ -f Makefile ]] ; then
		set -- \
			OTHERLDFLAGS="${LDFLAGS}" \
			"${mymake_local[@]}"
		einfo "emake" "$@"
		emake "$@" \
			|| die "Compilation failed"
#			OPTIMIZE="${CFLAGS}" \
	fi
}

# For testers:
#  This code attempts to work out your threadingness from MAKEOPTS
#  and apply them to Test::Harness.
#
#  If you want more verbose testing, set TEST_VERBOSE=1
#  in your bashrc | /etc/make.conf | ENV
#
# Additionally, you can add support for a few additional situations:
#
#   1. GENTOO_PERL_TESTS="network" will enable running tests that require
#   network connectivity.
#
#   2. GENTOO_PERL_TESTS="broken" will enable running tests that we have marked
#   as broken.
#
#   3. GENTOO_PERL_TESTS="undefined" will make all packages using the
#   perl-module eclass to behave as if somebody had put a SRC_TEST stanza in it.
#
# For ebuild writers:
#  If you wish to enable default tests w/ 'make test' ,
#
#   SRC_TEST="do"
#
#  If you wish to have threads run in parallel ( using the users makeopts )
#  all of the following have been tested to work.
#
#   SRC_TEST="do parallel"
#   SRC_TEST="parallel"
#   SRC_TEST="parallel do"
#   SRC_TEST=parallel
#
#  If your ebuild has tests, but they require networking to work, you can
#  disable tests by adding "network" in your SRC_TEST string.
#
#  If your ebuild has tests, but they are broken, you can disable them
#  with SRC_TEST="broken"
#

perltest() {
	has $1 ${SRC_TEST}
}
perlenvtest() {
	has $1 ${GENTOO_PERL_TESTS}
}

perl-module_src_test() {
	debug-print-function $FUNCNAME "$@"

	local skip_testing has_tests skip_reason need_flags;

	has_tests=0;

	if perltest 'do' \
		|| perltest 'parallel' \
		|| perltest 'broken' \
		|| perltest 'network' ; then
		has_tests=1;
	fi
	if [ $has_tests = 0 ] && perlenvtest 'undefined'; then
		ewarn "${P}: SRC_TEST undefined, but forced";
		has_tests=1
	fi

	skip_testing=0;
	need_flags=""

	if perltest 'network';  then
		if perlenvtest 'network'; then
			ewarn "${P}: Required network for testing, granted"
		else
			ewarn "${P}: Requires network for testing."
			skip_testing=1
			need_flags="${need_flags} network"
		fi
	fi
	if perltest 'broken';  then
		if perlenvtest 'broken'; then
			ewarn "${P}: Tests marked broken. You have chosen to run anyway."
		else
			ewarn "${P}: Tests marked broken by Gentoo."
			skip_testing=1
			need_flags="${need_flags} broken"
		fi
	fi

	if [[ $has_tests = 1 && $skip_testing = 1 ]]; then
		ewarn "${P}: Tests skipped: set GENTOO_PERL_TESTS=\"${need_flags}\" to force."
	elif [ $has_tests = 0 ]; then
		eqawarn \
			"${P}: This perl-module ebuild does not define SRC_TEST, tests possibly missing"
	else
		if has "${TEST_VERBOSE:-0}" 0 && perltest 'parallel' ; then
			export HARNESS_OPTIONS=j$(echo -j1 ${MAKEOPTS} | sed -r "s/.*(-j\s*|--jobs=)([0-9]+).*/\2/" )
			einfo "Test::Harness Jobs=${HARNESS_OPTIONS}"
		fi
		${perlinfo_done} || perl_set_version
		if [[ -f Build ]] ; then
			./Build test verbose=${TEST_VERBOSE:-0} || die "test failed"
		elif [[ -f Makefile ]] ; then
			emake test TEST_VERBOSE=${TEST_VERBOSE:-0} || die "test failed"
		else
			ewarn "No ./Build or ./Makefile, can not run tests"
		fi
	fi
}

perl-module_src_install() {
	debug-print-function $FUNCNAME "$@"

	perl_set_version
	perl_set_eprefix

	local f

	if [[ -z ${mytargets} ]] ; then
		case "${CATEGORY}" in
			dev-perl|perl-core) mytargets="pure_install" ;;
			*)                  mytargets="install" ;;
		esac
	fi

	if [[ $(declare -p myinst 2>&-) != "declare -a myinst="* ]]; then
		local myinst_local=(${myinst})
	else
		local myinst_local=("${myinst[@]}")
	fi

	if [[ -f Build ]] ; then
		./Build ${mytargets} \
			|| die "./Build ${mytargets} failed"
	elif [[ -f Makefile ]] ; then
		emake "${myinst_local[@]}" ${mytargets} \
			|| die "emake ${myinst_local[@]} ${mytargets} failed"
	fi

	perl_delete_module_manpages
	perl_delete_localpod
	perl_delete_packlist
	perl_remove_temppath

	for f in Change* CHANGES README* TODO FAQ ${mydoc}; do
		[[ -s ${f} ]] && dodoc ${f}
	done

	perl_link_duallife_scripts
}

perl-module_pkg_setup() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version
}

perl-module_pkg_preinst() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version
}

perl-module_pkg_postinst() {
	debug-print-function $FUNCNAME "$@"
	perl_link_duallife_scripts
}

perl-module_pkg_prerm() {
	debug-print-function $FUNCNAME "$@"
}

perl-module_pkg_postrm() {
	debug-print-function $FUNCNAME "$@"
	perl_link_duallife_scripts
}

perlinfo() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version
}

perl_set_version() {
	debug-print-function $FUNCNAME "$@"
	debug-print "$FUNCNAME: perlinfo_done=${perlinfo_done}"
	${perlinfo_done} && return 0
	perlinfo_done=true

	local f version install{{site,vendor}{arch,lib},archlib}
	eval "$(perl -V:{version,install{{site,vendor}{arch,lib},archlib}} )"
	PERL_VERSION=${version}
	SITE_ARCH=${installsitearch}
	SITE_LIB=${installsitelib}
	ARCH_LIB=${installarchlib}
	VENDOR_LIB=${installvendorlib}
	VENDOR_ARCH=${installvendorarch}
}

fixlocalpod() {
	debug-print-function $FUNCNAME "$@"
	perl_delete_localpod
}

perl_delete_localpod() {
	debug-print-function $FUNCNAME "$@"

	find "${D}" -type f -name perllocal.pod -delete
	find "${D}" -depth -mindepth 1 -type d -empty -delete
}

perl_fix_osx_extra() {
	debug-print-function $FUNCNAME "$@"

	# Remove "AppleDouble encoded Macintosh file"
	local f
	find "${S}" -type f -name "._*" -print0 | while read -rd '' f ; do
		einfo "Removing AppleDouble encoded Macintosh file: ${f#${S}/}"
		rm -f "${f}"
		f=${f#${S}/}
	#	f=${f//\//\/}
	#	f=${f//\./\.}
	#	sed -i "/${f}/d" "${S}"/MANIFEST || die
		grep -q "${f}" "${S}"/MANIFEST && \
			elog "AppleDouble encoded Macintosh file in MANIFEST: ${f#${S}/}"
	done
}

perl_delete_module_manpages() {
	debug-print-function $FUNCNAME "$@"

	perl_set_eprefix

	if [[ -d "${ED}"/usr/share/man ]] ; then
#		einfo "Cleaning out stray man files"
		find "${ED}"/usr/share/man -type f -name "*.3pm" -delete
		find "${ED}"/usr/share/man -depth -type d -empty -delete
	fi
}


perl_delete_packlist() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version
	if [[ -d ${D}/${VENDOR_ARCH} ]] ; then
		find "${D}/${VENDOR_ARCH}" -type f -a \( -name .packlist \
			-o \( -name '*.bs' -a -empty \) \) -delete
		find "${D}" -depth -mindepth 1 -type d -empty -delete
	fi
}

perl_remove_temppath() {
	debug-print-function $FUNCNAME "$@"

	find "${D}" -type f -not -name '*.so' -print0 | while read -rd '' f ; do
		if file "${f}" | grep -q -i " text" ; then
			grep -q "${D}" "${f}" && ewarn "QA: File contains a temporary path ${f}"
			sed -i -e "s:${D}:/:g" "${f}"
		fi
	done
}

perl_link_duallife_scripts() {
	debug-print-function $FUNCNAME "$@"
	if [[ ${CATEGORY} != perl-core ]] || ! has_version ">=dev-lang/perl-5.8.8-r8" ; then
		return 0
	fi

	perl_set_eprefix

	local i ff
	if has "${EBUILD_PHASE:-none}" "postinst" "postrm" ; then
		for i in "${DUALLIFESCRIPTS[@]}" ; do
			alternatives_auto_makesym "/${i}" "/${i}-[0-9]*"
		done
		for i in "${DUALLIFEMAN[@]}" ; do
			ff=`echo "${EROOT}"/${i%.1}-${PV}-${P}.1*`
			ff=${ff##*.1}
			alternatives_auto_makesym "/${i}${ff}" "/${i%.1}-[0-9]*"
		done
	else
		pushd "${ED}" > /dev/null
		for i in $(find usr/bin -maxdepth 1 -type f 2>/dev/null) ; do
			mv ${i}{,-${PV}-${P}} || die
			#DUALLIFESCRIPTS[${#DUALLIFESCRIPTS[*]}]=${i##*/}
			DUALLIFESCRIPTS[${#DUALLIFESCRIPTS[*]}]=${i}
		done
		for i in $(find usr/share/man/man1 -maxdepth 1 -type f 2>/dev/null) ; do
			mv ${i} ${i%.1}-${PV}-${P}.1 || die
			DUALLIFEMAN[${#DUALLIFEMAN[*]}]=${i}
		done
		popd > /dev/null
	fi
}

perl_set_eprefix() {
	debug-print-function $FUNCNAME "$@"
	case ${EAPI:-0} in
		0|1|2)
			if ! use prefix; then
				EPREFIX=
				ED=${D}
				EROOT=${ROOT}
			fi
			;;
	esac
}
