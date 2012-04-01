# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lang/perl/perl-5.14.2.ebuild,v 1.4 2012/03/03 12:29:38 grobian Exp $

EAPI=4

inherit eutils alternatives flag-o-matic toolchain-funcs multilib

PATCH_VER=1

PERL_OLDVERSEN="5.14.0 5.14.1"
MODULE_AUTHOR=FLORA

SHORT_PV="${PV%.*}"
MY_P="perl-${PV/_rc/-RC}"
MY_PV="${PV%_rc*}"

DESCRIPTION="Larry Wall's Practical Extraction and Report Language"

SRC_URI="
	mirror://cpan/src/${MY_P}.tar.bz2
	mirror://cpan/authors/id/${MODULE_AUTHOR:0:1}/${MODULE_AUTHOR:0:2}/${MODULE_AUTHOR}/${MY_P}.tar.bz2
	mirror://gentoo/${MY_P}-${PATCH_VER}.tar.bz2
	http://dev.gentoo.org/~tove/distfiles/${CATEGORY}/${PN}/${MY_P}-${PATCH_VER}.tar.bz2"
#	mirror://cpan/src/${MY_P}.tar.bz2
#	mirror://gentoo/${MY_P}-${PATCH_VER}.tar.bz2
HOMEPAGE="http://www.perl.org/"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd ~ppc-aix ~x64-freebsd ~x86-freebsd ~hppa-hpux ~ia64-hpux ~x86-interix ~amd64-linux ~ia64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~m68k-mint ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE="berkdb debug doc gdbm ithreads"

COMMON_DEPEND="
	berkdb? ( sys-libs/db )
	gdbm? ( >=sys-libs/gdbm-1.8.3 )
	app-arch/bzip2
	sys-libs/zlib
"
DEPEND="${COMMON_DEPEND}
	!prefix? ( elibc_FreeBSD? ( sys-freebsd/freebsd-mk-defs ) )
"
RDEPEND="${COMMON_DEPEND}
"
PDEPEND=">=app-admin/perl-cleaner-2.5"

S="${WORKDIR}/${MY_P}"

dual_scripts() {
	src_remove_dual      perl-core/Archive-Tar        1.760.0      ptar ptardiff ptargrep
	src_remove_dual      perl-core/Digest-SHA         5.610.0      shasum
	src_remove_dual      perl-core/CPAN               1.960.1_rc   cpan
	src_remove_dual      perl-core/CPANPLUS           0.910.300    cpanp cpan2dist
	src_remove_dual_file perl-core/CPANPLUS           0.910.300    /usr/bin/cpanp-run-perl
	src_remove_dual      perl-core/Encode             2.420.100_rc enc2xs piconv
	src_remove_dual      perl-core/ExtUtils-MakeMaker 6.570.500_rc instmodsh
	src_remove_dual      perl-core/ExtUtils-ParseXS   2.221.0      xsubpp
	src_remove_dual      perl-core/JSON-PP            2.271.50     json_pp
	src_remove_dual      perl-core/Module-Build       0.380.0      config_data
	src_remove_dual      perl-core/Module-CoreList    2.490.200_rc corelist
	src_remove_dual      perl-core/PodParser          1.370.0      pod2usage podchecker podselect
	src_remove_dual      perl-core/Test-Harness       3.230.0      prove
	src_remove_dual      perl-core/podlators          2.4.0        pod2man pod2text
	src_remove_dual_man  perl-core/podlators          2.4.0        /usr/share/man/man1/perlpodstyle.1
}

pkg_setup() {
	case ${CHOST} in
		*-freebsd*)   osname="freebsd" ;;
		*-dragonfly*) osname="dragonfly" ;;
		*-netbsd*)    osname="netbsd" ;;
		*-openbsd*)   osname="openbsd" ;;
		*-darwin*)    osname="darwin" ;;
		*-interix*)   osname="interix" ;;
		*)            osname="linux" ;;
	esac

	if use ithreads ; then
		mythreading="-multi"
		myarch="${CHOST%%-*}-${osname}-thread"
	else
		myarch="${CHOST%%-*}-${osname}"
	fi
	if use debug ; then
		myarch="${myarch}-debug"
	fi

	LIBPERL="libperl$(get_libname ${MY_PV} )"
	PRIV_LIB="/usr/$(get_libdir)/perl5/${MY_PV}"
	ARCH_LIB="/usr/$(get_libdir)/perl5/${MY_PV}/${myarch}${mythreading}"
	SITE_LIB="/usr/local/$(get_libdir)/perl5/${MY_PV}"
	SITE_ARCH="/usr/local/$(get_libdir)/perl5/${MY_PV}/${myarch}${mythreading}"
	VENDOR_LIB="/usr/$(get_libdir)/perl5/vendor_perl/${MY_PV}"
	VENDOR_ARCH="/usr/$(get_libdir)/perl5/vendor_perl/${MY_PV}/${myarch}${mythreading}"

	if use ithreads ; then
		echo ""
		ewarn "THREADS WARNING:"
		ewarn "PLEASE NOTE: You are compiling ${MY_P} with"
		ewarn "interpreter-level threading enabled."
		ewarn "Threading is not supported by all applications "
		ewarn "that compile against perl. You use threading at "
		ewarn "your own discretion. "
	fi
	check_rebuild
	dual_scripts
}

check_rebuild() {
	if has_version "<dev-lang/perl-${SHORT_PV}" ; then
		echo ""
		ewarn "UPDATE THE PERL MODULES:"
		ewarn "After updating dev-lang/perl you must reinstall"
		ewarn "the installed perl modules."
		ewarn "Use: perl-cleaner --all"
	elif has_version dev-lang/perl ; then
		# doesnot work
		#if ! has_version dev-lang/perl[ithreads=,debug=] ; then
		#if ! has_version dev-lang/perl[ithreads=] || ! has_version dev-lang/perl[debug=] ; then
		if (   use ithreads && ! has_version dev-lang/perl[ithreads] ) || \
		   ( ! use ithreads &&   has_version dev-lang/perl[ithreads] ) || \
		   (   use debug    && ! has_version dev-lang/perl[debug]    ) || \
		   ( ! use debug    &&   has_version dev-lang/perl[debug]    ) ; then
			echo ""
			ewarn "TOGGLED USE-FLAGS WARNING:"
			ewarn "You changed one of the use-flags ithreads or debug."
			ewarn "You must rebuild all perl-modules installed."
			ewarn "Use: perl-cleaner --modules ; perl-cleaner --force --libperl"
		fi
	fi
}

src_prepare_update_patchlevel_h() {
	[[ -f ${WORKDIR}/perl-patch/series ]] || return 0

	while read patch level ; do
		sed -i -e "s/^\t,NULL$/	,\"${patch//__/_}\"\n&/" "${S}"/patchlevel.h || die
	done < "${WORKDIR}"/perl-patch/series
}

src_prepare() {
	EPATCH_SOURCE="${WORKDIR}/perl-patch" \
	EPATCH_SUFFIX="diff" \
	EPATCH_FORCE="yes" \
	EPATCH_OPTS="-p1" \
	epatch

	src_prepare_update_patchlevel_h

	# pod/perltoc.pod fails
	# lib/ExtUtils/t/Embed.t fails
	if ! tc-is-static-only ; then
		ln -s ${LIBPERL} libperl$(get_libname ${SHORT_PV}) || die
		ln -s ${LIBPERL} libperl$(get_libname ) || die
	fi

	epatch "${FILESDIR}"/${PN}-5.12.3-aix-soname.patch
	epatch "${FILESDIR}"/${PN}-5.8.8-solaris-relocation.patch
	epatch "${FILESDIR}"/${PN}-5.8.8-solaris11.patch
	epatch "${FILESDIR}"/${PN}-5.14.1-cleanup-paths.patch
	epatch "${FILESDIR}"/${PN}-5.8.8-usr-local.patch
	epatch "${FILESDIR}"/${PN}-5.10.1-hpux.patch
	epatch "${FILESDIR}"/${PN}-5.8.8-darwin-cc-ld.patch
	epatch "${FILESDIR}"/${PN}-5.12.3-mint.patch
	epatch "${FILESDIR}"/${PN}-5.12.3-interix.patch

	# rest of usr-local patch
	sed -i \
		-e '/^locincpth=/c\locincpth=""' \
		-e '/^loclibpth=/c\loclibpth=""' \
		-e '/^glibpth=.*\/local\//s: /usr/local/lib.*":":' \
		Configure || die
}

myconf() {
	# the myconf array is declared in src_configure
	myconf=( "${myconf[@]}" "$@" )
}

src_configure() {
	declare -a myconf

	export LC_ALL="C"
	[[ ${COLUMNS:-1} -ge 1 ]] || unset COLUMNS # bug #394091

	# some arches and -O do not mix :)
	use ppc && replace-flags -O? -O1
	# Perl has problems compiling with -Os in your flags with glibc
	use elibc_uclibc || replace-flags "-Os" "-O2"
	# This flag makes compiling crash in interesting ways
	filter-flags "-malign-double"
	# Fixes bug #97645
	use ppc && filter-flags "-mpowerpc-gpopt"
	# Fixes bug #143895 on gcc-4.1.1
	filter-flags "-fsched2-use-superblocks"

	use sparc && myconf -Ud_longdbl

	# 266337
	export BUILD_BZIP2=0
	export BZIP2_INCLUDE=${EPREFIX}/usr/include
	export BZIP2_LIB=${EPREFIX}/usr/$(get_libdir)
	cat <<-EOF > "${S}/cpan/Compress-Raw-Zlib/config.in"
		BUILD_ZLIB = False
		INCLUDE = ${EPREFIX}/usr/include
		LIB = ${EPREFIX}/usr/$(get_libdir)

		OLD_ZLIB = False
		GZIP_OS_CODE = AUTO_DETECT
	EOF

	# allow either gdbm to provide ndbm (in <gdbm/ndbm.h>) or db1

	myndbm='U'
	mygdbm='U'
	mydb='U'

	if use gdbm ; then
		mygdbm='D'
		myndbm='D'
	fi
	if use berkdb ; then
		mydb='D'
		has_version '=sys-libs/db-1*' && myndbm='D'
	fi

	myconf "-${myndbm}i_ndbm" "-${mygdbm}i_gdbm" "-${mydb}i_db"

	if use alpha && [[ "$(tc-getCC)" = "ccc" ]] ; then
		ewarn "Perl will not be built with berkdb support, use gcc if you needed it..."
		myconf -Ui_db -Ui_ndbm
	fi

	use ithreads && myconf -Dusethreads

	if use debug ; then
		append-cflags "-g"
		myconf -DDEBUGGING
	elif [[ ${CFLAGS} == *-g* ]] ; then
		myconf -DDEBUGGING=-g
	else
		myconf -DDEBUGGING=none
	fi

	if [[ -n ${PERL_OLDVERSEN} ]] ; then
		local inclist=$(for v in ${PERL_OLDVERSEN}; do echo -n "${v}/${myarch}${mythreading} ${v} "; done )
		myconf -Dinc_version_list="${inclist}"
	fi

	[[ ${ELIBC} == "FreeBSD" ]] && myconf "-Dlibc=/usr/$(get_libdir)/libc.a"

	# Prefix: the host system needs not to follow Gentoo multilib stuff, and in
	# Prefix itself we don't do multilib either, so make sure perl can find
	# something compatible.
	if use prefix ; then
		local ldir
		local llib
		local paths=""
		echo "int main() {}" > "${T}"/t.c
		# need to ensure dirs contain compatible libs, bug #358875
		for ldir in /lib /usr/lib /lib64 /lib/64 /usr/lib64 /usr/lib/64 /lib32 /usr/lib32 ; do
			[[ -d ${ldir} ]] || continue
			# find a random lib from here
			llib=( ${ldir}/*$(get_libname) )
			[[ -e ${llib[0]} ]] || continue
			$(tc-getCC) -o "${T}"/t "${T}"/t.c ${llib[0]} >& /dev/null \
				&& paths="${paths} ${ldir}"
		done
		myconf "-Dlibpth=${EPREFIX}/$(get_libdir) ${EPREFIX}/usr/$(get_libdir) ${paths}"
	elif [[ $(get_libdir) != "lib" ]] ; then
		# We need to use " and not ', as the written config.sh use ' ...
		myconf "-Dlibpth=/usr/local/$(get_libdir) /$(get_libdir) /usr/$(get_libdir)"
	fi

	# don't try building ODBM, bug #354453
	myconf -Dnoextensions=ODBM_File

	sh Configure \
		-des \
		-Duseshrplib \
		-Darchname="${myarch}" \
		-Dcc="$(tc-getCC)" \
		-Doptimize="${CFLAGS}" \
		-Dldflags="${LDFLAGS}" \
		-Dprefix="${EPREFIX}"'/usr' \
		-Dinstallprefix="${EPREFIX}"'/usr' \
		-Dsiteprefix="${EPREFIX}"'/usr' \
		-Dvendorprefix="${EPREFIX}"'/usr' \
		-Dscriptdir="${EPREFIX}"'/usr/bin' \
		-Dprivlib="${EPREFIX}${PRIV_LIB}" \
		-Darchlib="${EPREFIX}${ARCH_LIB}" \
		-Dsitelib="${EPREFIX}${SITE_LIB}" \
		-Dsitearch="${EPREFIX}${SITE_ARCH}" \
		-Dvendorlib="${EPREFIX}${VENDOR_LIB}" \
		-Dvendorarch="${EPREFIX}${VENDOR_ARCH}" \
		-Dman1dir="${EPREFIX}"/usr/share/man/man1 \
		-Dman3dir="${EPREFIX}"/usr/share/man/man3 \
		-Dsiteman1dir="${EPREFIX}"/usr/share/man/man1 \
		-Dsiteman3dir="${EPREFIX}"/usr/share/man/man3 \
		-Dvendorman1dir="${EPREFIX}"/usr/share/man/man1 \
		-Dvendorman3dir="${EPREFIX}"/usr/share/man/man3 \
		-Dman1ext='1' \
		-Dman3ext='3pm' \
		-Dlibperl="${LIBPERL}" \
		-Dlocincpth="${EPREFIX}"'/usr/include ' \
		-Dglibpth="${EPREFIX}/$(get_libdir) ${EPREFIX}/usr/$(get_libdir)"' ' \
		-Duselargefiles \
		-Dd_semctl_semun \
		-Dcf_by='Gentoo' \
		-Dmyhostname='localhost' \
		-Dperladmin='root@localhost' \
		-Dinstallusrbinperl='n' \
		-Ud_csh \
		-Uusenm \
		"${myconf[@]}" || die "Unable to configure"
}

src_test() {
	if [[ ${EUID} == 0 ]] ; then
		ewarn "Test fails with a sandbox error (#328793) if run as root. Skipping tests..."
		return 0
	fi
	use elibc_uclibc && export MAKEOPTS+=" -j1"
	TEST_JOBS=$(echo -j1 ${MAKEOPTS} | sed -r 's/.*(-j[[:space:]]*|--jobs=)([[:digit:]]+).*/\2/' ) \
		make test_harness || die "test failed"
}

src_install() {
	local i
	local coredir="${ARCH_LIB}/CORE"

	emake DESTDIR="${D}" install

	rm -f "${ED}"/usr/bin/perl
	ln -s perl${MY_PV} "${ED}"/usr/bin/perl || die

	if ! tc-is-static-only ; then
		dolib.so "${ED}"${coredir}/${LIBPERL}
		rm -f "${ED}"${coredir}/${LIBPERL}
		ln -sf ${LIBPERL} "${ED}"/usr/$(get_libdir)/libperl$(get_libname ${SHORT_PV}) || die
		ln -sf ${LIBPERL} "${ED}"/usr/$(get_libdir)/libperl$(get_libname) || die
		ln -sf ../../../../../$(get_libdir)/${LIBPERL} "${ED}"${coredir}/${LIBPERL} || die
		ln -sf ../../../../../$(get_libdir)/${LIBPERL} "${ED}"${coredir}/libperl$(get_libname ${SHORT_PV}) || die
		ln -sf ../../../../../$(get_libdir)/${LIBPERL} "${ED}"${coredir}/libperl$(get_libname) || die
	fi

	rm -rf "${ED}"/usr/share/man/man3 || die "Unable to remove module man pages"

#	# A poor fix for the miniperl issues
#	dosed 's:./miniperl:/usr/bin/perl:' /usr/$(get_libdir)/perl5/${MY_PV}/ExtUtils/xsubpp
#	fperms 0444 /usr/$(get_libdir)/perl5/${MY_PV}/ExtUtils/xsubpp
#	dosed 's:./miniperl:/usr/bin/perl:' /usr/bin/xsubpp
#	fperms 0755 /usr/bin/xsubpp

	# This removes ${D} from Config.pm
	for i in $(find "${D}" -iname "Config.pm" ) ; do
		einfo "Removing ${D} from ${i}..."
		sed -i -e "s:${D}::" "${i}" || die "Sed failed"
	done

	find "${ED}" -type f -name .packlist -delete || die

	# Note: find out from psm why we would need/want this.
	# ( use berkdb && has_version '=sys-libs/db-1*' ) ||
	#	find "${ED}" -name "*NDBM*" | xargs rm -f

	dodoc Changes* README AUTHORS

	if use doc ; then
		# HTML Documentation
		# We expect errors, warnings, and such with the following.

		dodir /usr/share/doc/${PF}/html
		LD_LIBRARY_PATH=. ./perl installhtml \
			--podroot='.' \
			--podpath='lib:ext:pod:vms' \
			--recurse \
			--htmldir="${ED}/usr/share/doc/${PF}/html" \
			--libpods='perlfunc:perlguts:perlvar:perlrun:perlop'
	fi

	dual_scripts
}

pkg_postinst() {
	dual_scripts

	if [[ "${ROOT}" = "/" ]] ; then
		local INC DIR file
		INC=$(perl -e 'for $line (@INC) { next if $line eq "."; next if $line =~ m/'${SHORT_PV}'|etc|local|perl$/; print "$line\n" }')
		einfo "Removing old .ph files"
		for DIR in ${INC} ; do
			if [[ -d "${DIR}" ]] ; then
				for file in $(find "${DIR}" -name "*.ph" -type f ) ; do
					rm -f "${file}"
					einfo "<< ${file}"
				done
			fi
		done
		# Silently remove the now empty dirs
		for DIR in ${INC} ; do
			if [[ -d "${DIR}" ]] ; then
				find "${DIR}" -depth -type d -print0 | xargs -0 -r rmdir &> /dev/null
			fi
		done

#		ebegin "Generating ConfigLocal.pm (ignore any error)"
#		enc2xs -C

		einfo "Converting C header files to the corresponding Perl format (ignore any error)"
		# Prefix note: unprefixed as this is all kernel/libc stuff that we never provide
		pushd /usr/include >/dev/null
			h2ph -Q -a -d "${EPREFIX}"${ARCH_LIB} \
				asm/termios.h syscall.h syslimits.h syslog.h sys/ioctl.h \
				sys/socket.h sys/time.h wait.h sysexits.h
		popd >/dev/null

# This has been moved into a function because rumor has it that a future release
# of portage will allow us to check what version was just removed - which means
# we will be able to invoke this only as needed :)
		# Tried doing this via  -z, but $INC is too big...
		#if [[ "${INC}x" != "x" ]]; then
		#	cleaner_msg
		#fi
	fi
}

pkg_postrm(){
	dual_scripts

#	if [[ -e ${ARCH_LIB}/Encode/ConfigLocal.pm ]] ; then
#		ebegin "Removing ConfigLocal.pm"
#		rm "${ARCH_LIB}/Encode/ConfigLocal.pm"
#	fi
}

cleaner_msg() {
	eerror "You have had multiple versions of perl. It is recommended"
	eerror "that you run perl-cleaner now. perl-cleaner will"
	eerror "assist with this transition. This script is capable"
	eerror "of cleaning out old .ph files, rebuilding modules for "
	eerror "your new version of perl, as well as re-emerging"
	eerror "applications that compiled against your old libperl$(get_libname)"
	eerror
	eerror "PLEASE DO NOT INTERRUPT THE RUNNING OF THIS SCRIPT."
	eerror "Part of the rebuilding of applications compiled against "
	eerror "your old libperl involves temporarily unmerging"
	eerror "them - interruptions could leave you with unmerged"
	eerror "packages before they can be remerged."
	eerror ""
	eerror "If you have run perl-cleaner and a package still gives"
	eerror "you trouble, and re-emerging it fails to correct"
	eerror "the problem, please check http://bugs.gentoo.org/"
	eerror "for more information or to report a bug."
	eerror ""
}

src_remove_dual_file() {
	local i pkg ver
	pkg="$1"
	ver="$2"
	shift 2
	case "${EBUILD_PHASE:-none}" in
		postinst|postrm)
			for i in "$@" ; do
				alternatives_auto_makesym "${i}" "${i}-[0-9]*"
			done
			;;
		setup)
			for i in "$@" ; do
				if [[ -f ${EROOT}${i} && ! -h ${EROOT}${i} ]] ; then
					has_version ${pkg} && ewarn "You must reinstall ${pkg} !"
					break
				fi
			done
			;;
		install)
			for i in "$@" ; do
				if ! [[ -f "${ED}"${i} ]] ; then
					ewarn "${i} does not exist!"
					continue
				fi
				mv "${ED}"${i}{,-${ver}-${P}} || die
			done
			;;
	esac
}

src_remove_dual_man() {
	local i pkg ver ff
	pkg="$1"
	ver="$2"
	shift 2
	case "${EBUILD_PHASE:-none}" in
		postinst|postrm)
			for i in "$@" ; do
				ff=`echo "${EROOT}${i%.[0-9]}-${ver}-${P}${i#${i%.[0-9]}}"*`
				ff=${ff##*${i#${i%.[0-9]}}}
				alternatives_auto_makesym "${i}${ff}" "${i%.[0-9]}-[0-9]*"
			done
			;;
		install)
			for i in "$@" ; do
				if ! [[ -f "${ED}"${i} ]] ; then
					ewarn "${i} does not exist!"
					continue
				fi
				mv "${ED}"${i} "${ED}"${i%.[0-9]}-${ver}-${P}${i#${i%.[0-9]}} || die
			done
			;;
	esac
}

src_remove_dual() {
	local i pkg ver
	pkg="$1"
	ver="$2"
	shift 2
	for i in "$@" ; do
		src_remove_dual_file  "${pkg}" "${ver}" "/usr/bin/${i}"
		src_remove_dual_man   "${pkg}" "${ver}" "/usr/share/man/man1/${i}.1"
	done
}
