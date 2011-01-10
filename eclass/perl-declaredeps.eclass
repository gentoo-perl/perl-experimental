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

DESCRIPTION="Based on the ${ECLASS} eclass";

case "${EAPI:-0}" in
	4)
		;;
	*)
		die "perl-declaredeps needs EAPI4";
		;;
esac

DDEP_CONFLICTS="";
DDEP_BUILDDEPENDS="";
DDEP_RUNDEPENDS="";
DDEP_TESTDEPENDS="";

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

ddep_setup() {
	RDEPEND="${RDEPEND} ${DDEP_CONFLICTS} ${DDEP_RUNDEPENDS}"
	if [[ -n $DDEP_TESTDEPENDS ]]; then
		DEPEND="${DEPEND} 
		${DDEP_CONFLICTS}
		${DDEP_RUNDEPENDS}
		${DDEP_BUILDDEPENDS}
		test? (
			${DDEP_TESTDEPENDS}
		)";
		IUSE="${IUSE} test";
	else
	DEPEND="${DEPEND} 
		${DDEP_CONFLICTS}
		${DDEP_RUNDEPENDS}
		${DDEP_BUILDDEPENDS}
	";
	fi
}
