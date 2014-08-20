# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

#
# Original Author: Kent Fredric <kentfredric@gmail.com>
# Purpose: Experimental virtuals for gentoo perl
# Reason: http://wiki.gentoo.org/wiki/Project:Perl/Ongoing_tasks#Updating_the_virtuals


# usage:
#
# EAPI=5
# ON_CPAN=1
# inherit perl-virtual-2
#
# EAPI=5
# ON_CPAN=1
# PERL_VERSIONS="5.18"
# inherit perl-virtual-2
#
# EAPI=5
# PERL_VERSIONS="5.18"
# inherit perl-virtual-2


case "${EAPI:0}" in
	5)

	;;
	*)
		die "EAPI=${EAPI} is not supported by perl-virtual-2.eclass";
	;;
esac

DESCRIPTION="Virtual for perl-core/${PN#perl-}"
# Note: This has to be blank, repoman doesn't like it.
# But otherwise we'd link to http://wiki.gentoo.org/wiki/Project:Perl/Ongoing_tasks#Updating_the_virtuals
HOMEPAGE=""
SRC_URI=""
LICENSE=""
IUSE=""

[[ ${ON_CPAN} ]] || ON_CPAN=""
ON_PERL="1"

[[ ${PERL_VERSIONS} ]] || ON_PERL="";

[[ ${ON_CPAN} || ${ON_PERL} ]] || die "One of ON_CPAN or PERL_VERSIONS must be specified for perl-virtual-2.eclass";

# CPAN + Perl =>
# perl_5_18 ? ( =perl-5.18* , !perl-core/ )
# perl_5_16 ? ( =perl-5.16* , !perl-core/ )
# !perl_5_18? ( !perl_5_16? (
#   || ( =perl-5.18* =perl-5.18* =perl-core/ )
#	!<perl-core/...$PV !>perl-core/..$PV
# ))
if [[ ${ON_CPAN} && ${ON_PERL} ]]; then
	PL_DEPS="";
	EXCL_DEPS="";
	NEXCL_START="";
	NEXCL_STOP="";
	NPLS=0;
	OLDIFS=$IFS;
	IFS=" ";
	for i in ${PERL_VERSIONS}; do
		IUSE="$IUSE perl_${i//./_}"
		EXCL_DEPS="$EXCL_DEPS perl_${i//./_}? ( =dev-lang/perl-${i}* !perl-core/${PN#perl-} )"
		NEXCL_START="$NEXCL_START !perl_${i//./_}? ("
		NEXCL_STOP=") $NEXCL_STOP"
		PL_DEPS="$PL_DEPS =dev-lang/perl-${i}*"
		NPLS=$(( $NPLS + 1 ));
	done
	IFS=$OLDIFS;
	RDEPEND="
		$EXCL_DEPS
		$NEXCL_START
			|| ( $PL_DEPS ~perl-core/${PN#perl-}-${PV} )
			!<perl-core/${PN#perl-}-${PV}
       		!>perl-core/${PN#perl-}-${PV}-r999
		$NEXCL_STOP"
fi

# CPAN + !Perl =>
#   =perl-core/..$PV
#
if [[ ${ON_CPAN} && ! ${ON_PERL} ]]; then
	RDEPEND="~perl-core/${PN#perl-}-${PV}"
fi

# !CPAN + Perl =>
#   
# either:
#   =perl-5.18
#   !perl-core/..
#
# or
#
# perl_5_18? ( =perl-5.18* )
# perl_5_16? ( =perl-5.16* )
# !perl_5_18? ( !perl_5_16? (
#        || ( =perl-5.18* =perl-5.16* )
# ))
# !perl-core/
#
if [[ ! ${ON_CPAN} && ${ON_PERL} ]]; then
	PL_DEPS="";
	NPLS=0;
	EXCL_DEPS="";
	NEXCL_START="";
	NEXCL_STOP="";
	XIUSE="";
	OLDIFS=$IFS;
	IFS=" ";
	for i in ${PERL_VERSIONS}; do
		XIUSE="$XIUSE perl_${i//./_}"
		EXCL_DEPS="$EXCL_DEPS perl_${i//./_}? ( =dev-lang/perl-${i}* )"
		NEXCL_START="$NEXCL_START !perl_${i//./_}? ("
		NEXCL_STOP=") $NEXCL_STOP"
		PL_DEPS="$PL_DEPS =dev-lang/perl-${i}*"
		NPLS=$(( $NPLS + 1 ));
	done
	IFS=$OLDIFS;
	if [[ $NPLS > 1 ]]; then
		IUSE="$IUSE ${XIUSE}";
		RDEPEND="
			$EXCL_DEPS
			$NEXCL_START
			|| ( $PL_DEPS )
			$NEXCL_STOP
			!perl-core/${PN#perl-}
		"
	else
		RDEPEND="
			$PL_DEPS
			!perl-core/${PN#perl-}
		"
	fi
fi
