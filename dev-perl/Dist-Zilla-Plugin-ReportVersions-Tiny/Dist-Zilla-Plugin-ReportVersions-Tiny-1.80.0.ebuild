# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DOLMEN
MODULE_VERSION=1.08
inherit perl-module

DESCRIPTION='reports dependency versions during testing'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla 3.101390 ( 3.101.390 )
	echo \>=dev-perl/Dist-Zilla-3.101.390
	# Dist::Zilla::File::FromCode
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PrereqSource
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TextTemplate
	echo dev-perl/Dist-Zilla
	# Moose
	echo dev-perl/Moose
	# version 0.9901 ( 0.990.100 )
	echo \>=virtual/perl-version-0.990.100
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::MockObject
	echo dev-perl/Test-MockObject
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Warn
	echo dev-perl/Test-Warn
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
