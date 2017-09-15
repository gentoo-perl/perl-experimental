# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000001
inherit perl-module

DESCRIPTION='A minimal boot-strapping for Dist::Zilla Plug-ins.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla::Role::Bootstrap
	echo dev-perl/Dist-Zilla-Role-Bootstrap
	# Moose
	echo dev-perl/Moose
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# utf8
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Cwd
	echo virtual/perl-File-Spec
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# FindBin
	echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.89 ( 0.890.0 )
	echo \>=virtual/perl-Test-Simple-0.89
	# version
	echo virtual/perl-version
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
