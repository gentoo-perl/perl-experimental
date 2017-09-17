# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION='Introspect context information about modules in @INC'

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
	# Module::Metadata
	echo virtual/perl-Module-Metadata
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# Moo
	echo dev-perl/Moo
	# Path::Class::File
	echo dev-perl/Path-Class
	# Path::ScanINC 0.002 ( 0.2.0 )
	echo \>=dev-perl/Path-ScanINC-0.2.0
	# Sub::Quote
	echo dev-perl/Moo
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Carp
	# echo virtual/perl-Carp
	# Data::Dump
	echo dev-perl/Data-Dump
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	echo dev-lang/perl
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
