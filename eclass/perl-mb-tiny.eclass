# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/eclass/perl-module.eclass,v 1.134 2012/09/15 16:16:53 zmedico Exp $

# @ECLASS: perl-mb-tiny.eclass
# @MAINTAINER:
# perl@gentoo.org
# @AUTHOR:
# Kent Fredric <kentnl@cpan.org>
# Seemant Kulleen <seemant@gentoo.org>
# @BLURB: eclass for perl modules
# @DESCRIPTION:
# The perl-module eclass is designed to allow easier installation of perl
# modules, and their incorporation into the Gentoo Linux system.

inherit perl-module

PERLMB_EXPF="src_unpack src_compile src_test src_install src_prepare src_configure"

case "${EAPI:-0}" in
	5)
		;;
	*)
		die "EAPI=${EAPI} is not supported by perl-mb-tiny.eclass"
		;;
esac

EXPORT_FUNCTIONS ${PERLMB_EXPF};


perl-mb-tiny_src_unpack() {
	debug-print-function $FUNCNAME "$@"
	unpacker_src_unpack
}

perl-mb-tiny_src_prepare() {
	debug-print-function $FUNCNAME "$@"
	[[ ${PATCHES[@]} ]] && epatch "${PATCHES[@]}"
	debug-print "$FUNCNAME: applying user patches"
	epatch_user
	perl_fix_osx_extra
	esvn_clean
}

perl-mb-tiny_src_configure() {
	debug-print-function $FUNCNAME "$@"

	perl_set_version
	perl_set_eprefix

	# Disable ExtUtils::AutoInstall from prompting
	export PERL_EXTUTILS_AUTOINSTALL="--skipdeps"

	if [[ $(declare -p myconf 2>&-) != "declare -a myconf="* ]]; then
		local myconf_local=(${myconf})
	else
		local myconf_local=("${myconf[@]}")
	fi

	if [[ ! -f Build.PL ]] ; then
		die "Not Build.PL, is not a Module::Build::Tiny dist";
	fi
	if [[ ${DEPEND} != *dev-perl/Module-Build-Tiny* && ${PN} !=	Module-Build-Tiny ]]; then
		die "Package MUST depend on Module::Build::Tiny";
	fi
	einfo "Using Module::Build::Tiny"
	set -- \
		--installdirs=vendor \
		--destdir="${D}" \
		"${myconf_local[@]}"
	einfo "perl Build.PL" "$@"
	perl Build.PL "$@" <<< "${pm_echovar}" \
		|| die "Unable to build!"
}

perl-mb-tiny_src_compile() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version

	if [[ $(declare -p mymake 2>&-) != "declare -a mymake="* ]]; then
		local mymake_local=(${mymake})
	else
		local mymake_local=("${mymake[@]}")
	fi

	if [[ ! -f Build.PL ]] ; then
		die "Not Build.PL, is not a Module::Build::Tiny dist";
	fi

	./Build build || die "Compilation failed"
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

perl-mb-tiny_src_test() {
	debug-print-function $FUNCNAME "$@"
	if has 'do' ${SRC_TEST} || has 'parallel' ${SRC_TEST} ; then
		if has "${TEST_VERBOSE:-0}" 0 && has 'parallel' ${SRC_TEST} ; then
			export HARNESS_OPTIONS=j$(makeopts_jobs)
			einfo "Test::Harness Jobs=$(makeopts_jobs)"
		fi
		${perlinfo_done} || perl_set_version
		
		./Build test verbose=${TEST_VERBOSE:-0} || die "test failed"
	fi
}

perl-mb-tiny_src_install() {
	debug-print-function $FUNCNAME "$@"

	perl_set_version
	perl_set_eprefix

	local f

	if [[ -z ${mytargets} ]] ; then
		case "${CATEGORY}" in
			dev-perl|perl-core) mytargets="install" ;;
			*)                  mytargets="install" ;;
		esac
	fi

	if [[ $(declare -p myinst 2>&-) != "declare -a myinst="* ]]; then
		local myinst_local=(${myinst})
	else
		local myinst_local=("${myinst[@]}")
	fi

	./Build ${mytargets} || die "./Build ${mytargets} failed"

	perl_delete_module_manpages
	perl_delete_localpod
	perl_delete_packlist
	perl_remove_temppath

	for f in Change* CHANGES README* TODO FAQ ${mydoc}; do
		[[ -s ${f} ]] && dodoc ${f}
	done

	perl_link_duallife_scripts
}


