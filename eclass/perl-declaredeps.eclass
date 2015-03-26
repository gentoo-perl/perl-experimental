# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

#
# Original Author: Kent Fredric <kentfredric@gmail.com>
# Purpose: Make dependenices for Perl things declarative. 
#

# @ECLASS: perl-declaredeps.eclass
# @MAINTAINER: 
# kentfredric@gmail.com
# @BLURB: MetaSyntax for Perl Modules.
# @DESCRIPTION:
# There are a lot of patterns when writing Perl modules, 
# its mostly lots of dev-perl/Foo and >=dev-perl/Foo-1.2.
#
# Also, if you want to put something in, but only have it commented, 
# thats very difficult as DEPEND specs don't permit commenting. 
#
# There's also the fun part where we have to mess around with 
# DEPEND="test?( foo )" 
# Which is frivolous as no modules support test-only depends
# anyway, they're just build-deps ( :( ). 
#
# So the idea of this is just provide one syntax for everything, 
# and when the perl toolchain gets a clue, we can just change this module 
# and move things from build-deps to real test deps.
#
# Also, instead of providing the standard package spec string, 
# these functions take the package name and the version seperately, 
# in the hope, that one day, we can mangle the underlying function to take
# *perl* dependencies and *module* names instead of package names, 
# and have it just magically work somehow.

# At present, its EAPI=4 only, because without EAPI4, theres
# implicit DEPEND=RDEPEND :(

case "${EAPI:-0}" in
	4)
		eerror "perl-declaredeps:THIS ECLASS IS FULLY DEPRECATED and will begin fataling after April 10, 2015."
		eerror "If you need it to work after that point, replicate it to your overlay"
		eerror " -- in ${CATEGORY}/${PF}"
		;;
	*)
		die "perl-declaredeps needs EAPI4";
		;;
esac

DDEP_CONFLICTS="";
DDEP_BUILDDEPENDS="";
DDEP_RUNDEPENDS="";
DDEP_TESTDEPENDS="";
DDEP_CONFIGUREDEPENDS="";

conflict() {
	if [[ -n $2 ]]; then
		DDEP_CONFLICTS="${DDEP_CONFLICTS}
	!<=dev-perl/$1-$2";
	else
		DDEP_CONFLICTS="${DDEP_CONFLICTS}
	!dev-perl/$1";
	fi
}
hard_conflict() {
	if [[ -n $2 ]]; then
		DDEP_CONFLICTS="${DDEP_CONFLICTS}
	!!<=dev-perl/$1-$2";
	else
		DDEP_CONFLICTS="${DDEP_CONFLICTS}
	!!dev-perl/$1";
	fi
}

depend() {
	if [[ -n $2 ]]; then
		DDEP_RUNDEPENDS="${DDEP_RUNDEPENDS}
	>=dev-perl/$1-$2";
	else
		DDEP_RUNDEPENDS="${DDEP_RUNDEPENDS}
	dev-perl/$1";
	fi
}
depend-virtual() {
	if [[ -n $2 ]]; then
		DDEP_RUNDEPENDS="${DDEP_RUNDEPENDS}
	>=virtual/perl-$1-$2";
	else
		DDEP_RUNDEPENDS="${DDEP_RUNDEPENDS}
	virtual/perl-$1";
	fi
}
bdepend() {
	if [[ -n $2 ]]; then
		DDEP_BUILDDEPENDS="${DDEP_BUILDDEPENDS}
	>=dev-perl/$1-$2";
	else
		DDEP_BUILDDEPENDS="${DDEP_BUILDDEPENDS}
	dev-perl/$1";
	fi
}
bdepend-virtual() {
	if [[ -n $2 ]]; then
		DDEP_BUILDDEPENDS="${DDEP_BUILDDEPENDS}
	>=virtual/perl-$1-$2";
	else
		DDEP_BUILDDEPENDS="${DDEP_BUILDDEPENDS}
	virtual/perl-$1";
	fi
}
cdepend() {
	if [[ -n $2 ]]; then
		DDEP_CONFIGUREDEPENDS="${DDEP_CONFIGUREDEPENDS}
	>=dev-perl/$1-$2";
	else
		DDEP_CONFIGUREDEPENDS="${DDEP_CONFIGUREDEPENDS}
	dev-perl/$1";
	fi
}
cdepend-virtual() {
	if [[ -n $2 ]]; then
		DDEP_CONFIGUREDEPENDS="${DDEP_CONFIGUREDEPENDS}
	>=virtual/perl-$1-$2";
	else
		DDEP_CONFIGUREDEPENDS="${DDEP_CONFIGUREDEPENDS}
	virtual/perl-$1";
	fi
}

test-depend() {
	if [[ -n $2 ]]; then
		DDEP_TESTDEPENDS="${DDEP_TESTDEPENDS}
		>=dev-perl/$1-$2";
	else
		DDEP_TESTDEPENDS="${DDEP_TESTDEPENDS}
		dev-perl/$1";
	fi
}
test-depend-virtual() {
	if [[ -n $2 ]]; then
		DDEP_TESTDEPENDS="${DDEP_TESTDEPENDS}
		>=virtual/perl-$1-$2";
	else
		DDEP_TESTDEPENDS="${DDEP_TESTDEPENDS}
		virtual/perl-$1";
	fi
}

# @FUNCTION: ddep_setup
# @USAGE:
# @DESCRIPTION:
# This stanza does all the work of collecting the data defined by previous
# declarations and stuffing them into variables emerge/Portage/toolchain
# understands. WITHOUT this stanza, all the earlier declarations will have NO
# EFFECT.

ddep_setup() {
	RDEPEND="${RDEPEND} ${DDEP_CONFLICTS} ${DDEP_RUNDEPENDS}"
	DEPEND="${DEPEND}
		${DDEP_CONFLICTS}
		${DDEP_RUNDEPENDS}
		${DDEP_BUILDDEPENDS}
		${DDEP_CONFIGUREDEPENDS}"
	if [[ -n $DDEP_TESTDEPENDS ]]; then
		DEPEND="${DEPEND}
		test? (
			${DDEP_TESTDEPENDS}
		)";
		IUSE="${IUSE} test";
	fi
}

# @FUNCTION: ddep_print
# @USAGE:
# @DESCRIPTION:
# During 'repoman manifest' and other ways of sourcing the ebuild, this prints
# the result of all the declarative statements as they are represented
# internally, allowing easy migration of code that uses declarative dependencies
# to code that doesn't.
#
# This is useful if you need to port an EAPI4-only module to EAPI3.
#
# 1. inject 'ddep_print' after 'ddep_setup'
# 2. repoman manifest
# 3. collect output and inject it into ebuild
# 4. remove old declarative stuff ( either comment or delete )
#  4.1 Remove the depend statements
#  4.2 Remove change EAPI to not be 4 ( optional )
#  4.3 Remove this eclass from 'inherit'
# 5. Enjoy Cleaned ebuild.

ddep_print() {
	echo "#Beginning Compiled segment"
	DEXTRA="";
	if [[ -n $DDEP_TESTDEPENDS ]]; then
		echo "IUSE=\"\${IUSE} test\""
		DEXTRA=" test? (
			${DDEP_TEST_DEPENDS}
		)";
	fi
	echo "RDEPEND=\"\${RDEPEND}	${DDEP_CONFLICTS} ${DDEP_RUNDEPENDS}\""
	echo "DEPEND=\"\${DEPEND} ${DDEP_CONFLICTS}	${DDEP_RUNDEPENDS} ${DDEP_BUILDDEPENDS} ${DDEP_CONFIGUREDEPENDS}${DEXTRA}\""
}
