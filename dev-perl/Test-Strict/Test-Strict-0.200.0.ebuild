# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=SZABGAB
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='Check syntax, presence of use strict; and test coverage'
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
	# Devel::Cover 0.43 ( 0.430.0 )
	echo \>=dev-perl/Devel-Cover-0.430.0
	# File::Find 0.01 ( 0.10.0 )
	# echo \>=dev-lang/perl-0.10.0
	# File::Spec 0.01 ( 0.10.0 )
	echo \>=virtual/perl-File-Spec-0.10.0
	# File::Temp 0.01 ( 0.10.0 )
	echo \>=virtual/perl-File-Temp-0.10.0
	# FindBin 0.01 ( 0.10.0 )
	# echo \>=dev-lang/perl-0.10.0
	# Test::Builder 0.01 ( 0.10.0 )
	echo \>=virtual/perl-Test-Simple-0.10
	# Test::Simple 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
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
