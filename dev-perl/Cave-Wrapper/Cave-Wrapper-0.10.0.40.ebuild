# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01000004
inherit perl-module

DESCRIPTION='A Wrapper to the Paludis '\''cave'\'' Client.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4005 ( 0.400.500 )
	echo \>=dev-perl/Module-Build-0.400.500
}
perl_meta_build() {
	# Module::Build 0.4005 ( 0.400.500 )
	echo \>=dev-perl/Module-Build-0.400.500
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Moose
	echo dev-perl/Moose
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
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
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
}
extra_deps() {
	echo sys-apps/paludis
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
	$(extra_deps)
"
RDEPEND="
	$(perl_meta_runtime)
	$(extra_deps)
"
SRC_TEST="do parallel"
