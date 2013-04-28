# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION='test the Kwalitee of a distribution before you release it'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Cwd
	echo virtual/perl-File-Spec
	# Module::CPANTS::Analyse 0.87 ( 0.870.0 )
	echo \>=dev-perl/Module-CPANTS-Analyse-0.870.0
	# Test::Builder
	echo virtual/perl-Test-Simple
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# vars
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::CheckDeps 0.002 ( 0.2.0 )
	echo \>=dev-perl/Test-CheckDeps-0.2.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
