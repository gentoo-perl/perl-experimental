# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.009006
inherit perl-module

DESCRIPTION="selector based streaming template engine"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	# strict

	# warnings

	# perl 5.008001
	echo \>=dev-lang/perl-5.8.1
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_eumm_prereq_pm() {
	# strictures 1
	echo \>=dev-perl/strictures-1.0.0
	# Test::More 0.88
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="$(perl_eumm_configure) $(perl_eumm_prereq_pm)"
RDEPEND="$(perl_eumm_prereq_pm)"
SRC_TEST="do"
