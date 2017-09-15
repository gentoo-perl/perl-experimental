# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION='Receive notification when something changes a file'\''s contents'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build::Tiny 0.039 ( 0.39.0 )
	echo \>=dev-perl/Module-Build-Tiny-0.39.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_runtime() {
	# Digest::MD5
	echo virtual/perl-Digest-MD5
	# Dist::Zilla 4.300039 ( 4.300.39 )
	echo \>=dev-perl/Dist-Zilla-4.300.39
	# Encode
	echo virtual/perl-Encode
	# Moose::Role
	echo dev-perl/Moose
	# Safe::Isa
	echo dev-perl/Safe-Isa
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
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileMunger
	echo dev-perl/Dist-Zilla
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec
	echo virtual/perl-File-Spec
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
	# if
	echo virtual/perl-if
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
