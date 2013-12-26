# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MSTROUT
MODULE_VERSION=1.003001
inherit perl-module

DESCRIPTION='Minimalist Object Orientation (with Moose compatibility)'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Dist::CheckConflicts 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-CheckConflicts-0.20.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Class::Method::Modifiers 1.1 ( 1.100.0 )
	echo \>=dev-perl/Class-Method-Modifiers-1.100.0
	# Devel::GlobalDestruction 0.11 ( 0.110.0 )
	echo \>=dev-perl/Devel-GlobalDestruction-0.110.0
	# Dist::CheckConflicts 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-CheckConflicts-0.20.0
	# Module::Runtime 0.012 ( 0.12.0 )
	echo \>=dev-perl/Module-Runtime-0.12.0
	# Role::Tiny 1.003002 ( 1.3.2 )
	echo \>=dev-perl/Role-Tiny-1.3.2
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# strictures 1.004003 ( 1.4.3 )
	echo \>=dev-perl/strictures-1.4.3
}
perl_meta_test() {
	# Test::Fatal 0.003 ( 0.3.0 )
	echo \>=dev-perl/Test-Fatal-0.3.0
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.940.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
