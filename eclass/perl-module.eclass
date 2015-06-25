# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/eclass/perl-module.eclass,v 1.163 2015/03/14 14:32:10 dilfridge Exp $

# @ECLASS: perl-module.eclass
# @MAINTAINER:
# perl@gentoo.org
# @AUTHOR:
# Seemant Kulleen <seemant@gentoo.org>
# @BLURB: eclass for perl modules
# @DESCRIPTION:
# The perl-module eclass is designed to allow easier installation of perl
# modules, and their incorporation into the Gentoo Linux system.

inherit eutils multiprocessing unpacker perl-functions
[[ ${CATEGORY} == "perl-core" ]] && inherit alternatives

PERL_EXPF="src_unpack src_compile src_test src_install src_prepare src_configure"
[[ ${CATEGORY} == "perl-core" ]] && PERL_EXPF+=" pkg_postinst pkg_postrm"

case "${EAPI:-0}" in
	5)	;;
	*)	die "EAPI=${EAPI} is not supported by perl-module.eclass"
		;;
esac

case "${GENTOO_DEPEND_ON_PERL:-yes}" in
yes)
	case "${GENTOO_DEPEND_ON_PERL_SUBSLOT:-yes}" in
	yes)
		DEPEND="dev-lang/perl:=[-build(-)]"
		;;
	*)
		DEPEND="dev-lang/perl[-build(-)]"
		;;
	esac
	RDEPEND="${DEPEND}"
	;;
esac

if [[ -z "${MODULE_VERSION}" && -n "${MODULE_VERSION_SCHEME}" ]]; then
	inherit perl-version
	MODULE_VERSION=$( perl-version-denormalize ${MY_PV:-${PV}} $MODULE_VERSION_SCHEME  )
fi

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

LICENSE="${LICENSE:-|| ( Artistic GPL-1+ )}"

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

# @FUNCTION: perl-module_src_unpack
# @USAGE: perl-module_src_unpack
# @DESCRIPTION:
# Unpack the ebuild tarball(s).
# This function is to be called during the ebuild src_unpack() phase.
perl-module_src_unpack() {
	debug-print-function $FUNCNAME "$@"

	unpacker_src_unpack
	has src_prepare ${PERL_EXPF} || perl-module_src_prepare
}

# @FUNCTION: perl-module_src_prepare
# @USAGE: perl-module_src_prepare
# @DESCRIPTION:
# Get the ebuild sources ready.
# This function is to be called during the ebuild src_prepare() phase.
perl-module_src_prepare() {
	debug-print-function $FUNCNAME "$@"
	has src_prepare ${PERL_EXPF} && \
	[[ ${PATCHES[@]} ]] && epatch "${PATCHES[@]}"
	debug-print "$FUNCNAME: applying user patches"
	epatch_user
	if [[ ${PERL_RM_FILES[@]} ]]; then
		debug-print "$FUNCNAME: stripping unneeded files"
		perl_rm_files "${PERL_RM_FILES[@]}"
	fi
	perl_fix_osx_extra
	esvn_clean
}

# @FUNCTION: perl-module_src_configure
# @USAGE: perl-module_src_configure
# @DESCRIPTION:
# Configure the ebuild sources.
# This function is to be called during the ebuild src_configure() phase.
perl-module_src_configure() {
	debug-print-function $FUNCNAME "$@"

	[[ ${SRC_PREP} = yes ]] && return 0
	SRC_PREP="yes"

	perl_check_env

	perl_set_version

	[[ -z ${pm_echovar} ]] && export PERL_MM_USE_DEFAULT=1
	# Disable ExtUtils::AutoInstall from prompting
	export PERL_EXTUTILS_AUTOINSTALL="--skipdeps"

	if [[ $(declare -p myconf 2>&-) != "declare -a myconf="* ]]; then
		local myconf_local=(${myconf})
	else
		local myconf_local=("${myconf[@]}")
	fi

	if [[ ( ${PREFER_BUILDPL} == yes || ! -f Makefile.PL ) && -f Build.PL ]] ; then
		if grep -q '\(use\|require\)\s*Module::Build::Tiny' Build.PL ; then
			einfo "Using Module::Build::Tiny"
			if [[ ${DEPEND} != *dev-perl/Module-Build-Tiny* && ${PN} != Module-Build-Tiny ]]; then
				eqawarn "QA Notice: The ebuild uses Module::Build::Tiny but doesn't depend on it."
				eqawarn "           Add dev-perl/Module-Build-Tiny to DEPEND!"
				perl_qafatal "modulebuildtiny" "Needs to depend on Module-Build-Tiny"
			fi
		else
			einfo "Using Module::Build"
			if [[ ${DEPEND} != *virtual/perl-Module-Build* && ${DEPEND} != *dev-perl/Module-Build* && ${PN} != Module-Build ]] ; then
				eqawarn "QA Notice: The ebuild uses Module::Build but doesn't depend on it."
				eqawarn "           Add dev-perl/Module-Build to DEPEND!"
				perl_qafatal "modulebuild" "Needs to depend on Module-Build"
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
		if [[ -f Build && ${PERL_NO_BUILD_WARNING} != "true" ]] ; then
			ewarn "Using ExtUtils::MakeMaker but found a ./Build script!"
			ewarn "Shit happens NOW!"
		fi
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

# @FUNCTION: perl-module_src_compile
# @USAGE: perl-module_src_compile
# @DESCRIPTION:
# Compile the ebuild sources.
# This function is to be called during the ebuild src_compile() phase.
perl-module_src_compile() {
	debug-print-function $FUNCNAME "$@"
	perl_set_version

	has src_configure ${PERL_EXPF} || perl-module_src_configure

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

# Starting 2014-10-12:
#
# AUTHORS:
#
# - src_test is enabled by default
# - if tests dont work or should not be run, modify your ebuild to use RESTRICT=test
# - parallel testing is enabled by default
# - if parallel testing breaks an ebuild, turn it off with PERL_RESTRICT=parallel-test
# - if your ebuild calls out to network, set PERL_RESTRICT=network-test and it will normally do nothing different.
#
# USERS:
#
# If you get sick of parallel tests, set USER_PERL_RESTRICT=parallel-test, and it will go away.
# If your environment means you can't run tests that require the network, set USER_PERL_RESTRICT=network-test and they'll stop being run
#  if an author is nice enough to set PERL_RESTRICT=network-test.
#
#
# VARIABLES:
#
# PERL_RESTRICT:
#        parallel-test - parallel testing is unsupported
#        network-test  - a test requires network access ( File Bugs upstream to use NO_NETWORK_TESTING )
# USER_PERL_RESTRICT:
#        parallel-test - never do parallel testing
#        network-test  - never run tests that require network access
# SRC_TEST:
#        No longer used and completely ignored

perl-module_src_test() {
	debug-print-function $FUNCNAME "$@"

	# Turn it off globally per user choice.
	if has 'parallel-test' ${USER_PERL_RESTRICT}; then
		einfo "Disabling Parallel Testing: USER_PERL_RESTRICT=parallel-test";
		export HARNESS_OPTIONS="";

	# If user has TEST_VERBOSE globally, disable parallelism because verboseness
	# can break parallel testing.
	elif ! has "${TEST_VERBOSE:-0}" 0; then
		einfo "Disabling Parallel Testing: TEST_VERBOSE=${TEST_VERBOSE}";
		export HARNESS_OPTIONS="";

	# If ebuild says parallel tests dont work, turn them off.
	elif has 'parallel-test' ${PERL_RESTRICT}; then
		einfo "Disabling Parallel Testing: PERL_RESTRICT=parallel-test";
		export HARNESS_OPTIONS="";
	else
		# Default is on.
		einfo "Test::Harness Jobs=$(makeopts_jobs)"
		export HARNESS_OPTIONS=j$(makeopts_jobs)
	fi

	# If a user says "USER_PERL_RESTRICT=network-test",
	# then assume many CPAN dists will respect NO_NETWORK_TESTING and friends
	# even if Gentoo haven't made the entire dist "no network testing"
	if has 'network-test' ${USER_PERL_RESTRICT}; then
		export NO_NETWORK_TESTING=1
	fi

	# However, if CPAN don't auto trigger on the above, Gentoo
	# Can still disable them package wide with PERL_RESTRICT=network-test
	# But they'll run by default unless USER_PERL_RESTRICT=network-test
	if has 'network-test' ${USER_PERL_RESTRICT} && has 'network-test' ${PERL_RESTRICT}; then
		einfo "Skipping Tests: USER_PERL_RESTRICT=network-test && PERL_RESTRICT=network-test";
		return true;
	fi

	${perlinfo_done} || perl_set_version

	if [[ -f Build ]] ; then
		./Build test verbose=${TEST_VERBOSE:-0} || die "test failed"
	elif [[ -f Makefile ]] ; then
		emake test TEST_VERBOSE=${TEST_VERBOSE:-0} || die "test failed"
	fi
}

# @FUNCTION: perl-module_src_install
# @USAGE: perl-module_src_install
# @DESCRIPTION:
# Install a Perl ebuild.
# This function is to be called during the ebuild src_install() phase.
perl-module_src_install() {
	debug-print-function $FUNCNAME "$@"

	perl_set_version

	local f

	if [[ -f Build ]]; then
		mytargets="${mytargets:-install}"
		mbparams="${mbparams:---pure}"
		einfo "./Build ${mytargets} ${mbparams}"
		./Build ${mytargets} ${mbparams} \
			|| die "./Build ${mytargets} ${mbparams} failed"
	elif [[ -f Makefile ]]; then
		case "${CATEGORY}" in
			dev-perl|perl-core) mytargets="pure_install" ;;
			*)                  mytargets="install" ;;
		esac
		if [[ $(declare -p myinst 2>&-) != "declare -a myinst="* ]]; then
			local myinst_local=(${myinst})
		else
			local myinst_local=("${myinst[@]}")
		fi
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

# @FUNCTION: perl-module_pkg_postinst
# @USAGE: perl-module_pkg_postinst
# @DESCRIPTION:
# This function is to be called during the pkg_postinst() phase. It only does
# useful things for the perl-core category, where it handles the file renaming and symbolic
# links that prevent file collisions for dual-life packages installing scripts.
# In any other category it immediately exits.
perl-module_pkg_postinst() {
	debug-print-function $FUNCNAME "$@"
	if [[ ${CATEGORY} != perl-core ]] ; then
		eqawarn "perl-module.eclass: You are calling perl-module_pkg_postinst outside the perl-core category."
		eqawarn "   This does not do anything; the call can be safely removed."
		perl_qafatal "function" "$FUNCNAME is private to perl-core"
		return 0
	fi
	perl_link_duallife_scripts
}

# @FUNCTION: perl-module_pkg_postrm
# @USAGE: perl-module_pkg_postrm
# @DESCRIPTION:
# This function is to be called during the pkg_postrm() phase. It only does
# useful things for the perl-core category, where it handles the file renaming and symbolic
# links that prevent file collisions for dual-life packages installing scripts.
# In any other category it immediately exits.
perl-module_pkg_postrm() {
	debug-print-function $FUNCNAME "$@"
	if [[ ${CATEGORY} != perl-core ]] ; then
		eqawarn "perl-module.eclass: You are calling perl-module_pkg_postrm outside the perl-core category."
		eqawarn "   This does not do anything; the call can be safely removed."
		perl_qafatal "function" "$FUNCNAME is private to perl-core"
		return 0
	fi
	perl_link_duallife_scripts
}

has perl_diagnostics ${EBUILD_DEATH_HOOKS} || EBUILD_DEATH_HOOKS+=" perl_diagnostics"
