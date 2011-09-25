# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=VPIT
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION="Act on upper scopes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_eumm_configure() {
	# perl 5.006

	# strict

	# warnings

	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# Config
}
perl_eumm_prereq_pm() {
	# Exporter

	# XSLoader
	echo virtual/perl-XSLoader
	# base
}
perl_eumm_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# Test::More
	echo virtual/perl-Test-Simple
	# %PREREQ_PM
	perl_eumm_prereq_pm
}
RDEPEND="$(perl_eumm_prereq_pm)"
DEPEND="$(perl_eumm_configure) $(perl_eumm_build) $(perl_eumm_prereq_pm)"
SRC_TEST=do
