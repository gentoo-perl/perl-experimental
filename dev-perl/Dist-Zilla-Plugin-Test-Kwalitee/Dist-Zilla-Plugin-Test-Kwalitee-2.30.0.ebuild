# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=AYOUNG
MODULE_VERSION=2.03
inherit perl-module

DESCRIPTION='Release tests for kwalitee'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Data::Section
	echo dev-perl/Data-Section
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TextTemplate
	echo dev-perl/Dist-Zilla
	# File::Path 2.07 ( 2.70.0 )
	echo \>=virtual/perl-File-Path-2.07
	# Moose
	echo dev-perl/Moose
	# Test::Kwalitee
	echo dev-perl/Test-Kwalitee
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# Carp
	# echo dev-perl/Carp
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
	# English
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Temp
	echo virtual/perl-File-Temp
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Path::Class
	echo dev-perl/Path-Class
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Test::Output
	echo dev-perl/Test-Output
	# autodie
	echo virtual/perl-autodie
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
