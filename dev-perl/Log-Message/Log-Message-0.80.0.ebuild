# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION='Powerful and flexible message logging mechanism'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# File::Spec
	echo virtual/perl-File-Spec
	# Locale::Maketext::Simple
	echo virtual/perl-Locale-Maketext-Simple
	# Module::Load
	echo virtual/perl-Module-Load
	# Params::Check
	echo virtual/perl-Params-Check
	# Test::More
	echo virtual/perl-Test-Simple
	# if
	# echo virtual/perl-if
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
