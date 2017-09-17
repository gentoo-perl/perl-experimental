# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=IDOPEREL
MODULE_VERSION=0.070001
inherit perl-module

DESCRIPTION="Fast templating engine with support for embedded Perl"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	# strict

	# warnings

	# perl 5.008

	# ExtUtils::MakeMaker 6.56
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
}
perl_eumm_build() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# utf8
}
perl_eumm_prereq_pm() {
	# Carp

	# Fcntl

	# HTML::Entities
	echo dev-perl/HTML-Parser
}
DEPEND="$(perl_eumm_configure) $(perl_eumm_build) $(perl_eumm_prereq_pm)"
RDEPEND="$(perl_eumm_prereq_pm)"
