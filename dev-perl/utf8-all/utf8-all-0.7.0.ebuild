# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=0.007
inherit perl-module

DESCRIPTION='turn on Unicode - all of it'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Dist::CheckConflicts 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-CheckConflicts-0.20.0
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Dist::CheckConflicts 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-CheckConflicts-0.20.0
	# Encode
	echo virtual/perl-Encode
	# Import::Into
	echo dev-perl/Import-Into
	# charnames
	echo dev-lang/perl
	# open
	echo dev-lang/perl
	# parent
	echo virtual/perl-parent
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# utf8
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# PerlIO
	echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Warn
	echo dev-perl/Test-Warn
	# autodie
	echo dev-perl/autodie
	# version 0.77 ( 0.770.0 )
	echo \>=virtual/perl-version-0.770.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
