# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=APOCAL
MODULE_VERSION=1.006
inherit perl-module

DESCRIPTION='Add the $AUTHORITY variable and metadata to your distribution'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Dist::Zilla::Role::FileFinderUser 4.102345 ( 4.102.345 )
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Dist::Zilla::Role::FileMunger 4.102345 ( 4.102.345 )
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Dist::Zilla::Role::MetaProvider 4.102345 ( 4.102.345 )
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Dist::Zilla::Role::PPI 4.300001 ( 4.300.1 )
	echo \>=dev-perl/Dist-Zilla-4.300.1
	# Dist::Zilla::Util
	echo dev-perl/Dist-Zilla
	# File::HomeDir
	echo dev-perl/File-HomeDir
	# File::Spec
	echo virtual/perl-File-Spec
	# Moose 1.03 ( 1.30.0 )
	echo \>=dev-perl/Moose-1.30.0
	# Moose::Util::TypeConstraints 1.01 ( 1.10.0 )
	echo \>=dev-perl/Moose-1.10.0
	# PPI 1.206 ( 1.206.0 )
	echo \>=dev-perl/PPI-1.206.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
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
