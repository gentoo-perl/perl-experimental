# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.04000100
inherit perl-module

DESCRIPTION='Capture Stdout/Stderr simultaneously as if it were one stream, painlessly.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_build() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# IO::Handle
	echo virtual/perl-IO
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# Sub::Exporter 0.982 ( 0.982.0 )
	echo \>=dev-perl/Sub-Exporter-0.982.0
	# perl v5.8.3 ( 5.8.3 )
	echo \>=dev-lang/perl-5.8.3
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
	# FindBin
	echo dev-lang/perl
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
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
