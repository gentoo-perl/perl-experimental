# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.1.0
inherit perl-module

DESCRIPTION='Selectively upgrade a few modules to depend on the version used.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4001 ( 0.400.100 )
	echo \>=dev-perl/Module-Build-0.400.100
}
perl_meta_build() {
	# Module::Build 0.4001 ( 0.400.100 )
	echo \>=dev-perl/Module-Build-0.400.100
}
perl_meta_runtime() {
	# Dist::Zilla::Util::EmulatePhase
	echo dev-perl/Dist-Zilla-Util-EmulatePhase
	# Module::Data
	echo dev-perl/Module-Data
	# Moose
	echo dev-perl/Moose
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
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
