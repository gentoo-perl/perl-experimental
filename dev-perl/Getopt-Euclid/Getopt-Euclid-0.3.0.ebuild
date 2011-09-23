# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FANGLY
MODULE_VERSION=0.3.0
inherit perl-module

DESCRIPTION="Executable Uniform Command-Line Interface Descriptions"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

perl_mb_requires() {
	#Test::More
	echo virtual/perl-Test-Simple
	#version
	echo virtual/perl-version
	#File::Basename

	#File::Spec::Functions
	echo virtual/perl-File-Spec
	#List::Util
	echo virtual/perl-Scalar-List-Utils
	#Text::Balanced
	echo virtual/perl-Text-Balanced
	#Perl::Tidy
	echo dev-perl/perltidy
}
perl_mb_configure() {
	#Module::Build
	echo virtual/perl-Module-Build
}
RDEPEND="
	$(perl_mb_requires)
"
DEPEND="
	$(perl_mb_requires)
	$(perl_mb_configure)
"
SRC_TEST="do"
