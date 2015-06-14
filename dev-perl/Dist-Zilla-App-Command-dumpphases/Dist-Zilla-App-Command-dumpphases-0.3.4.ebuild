# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.3.4
inherit perl-module

DESCRIPTION='Dump a textual representation of each phase'\''s parts.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=dev-perl/Module-Build-0.400.700
}
perl_meta_build() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=dev-perl/Module-Build-0.400.700
}
perl_meta_runtime() {
	# Dist::Zilla::App
	echo dev-perl/Dist-Zilla
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# Moo
	echo dev-perl/Moo
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Role::Tiny
	echo dev-perl/Role-Tiny
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Term::ANSIColor
	echo virtual/perl-Term-ANSIColor
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
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
SRC_TEST="do parallel"
