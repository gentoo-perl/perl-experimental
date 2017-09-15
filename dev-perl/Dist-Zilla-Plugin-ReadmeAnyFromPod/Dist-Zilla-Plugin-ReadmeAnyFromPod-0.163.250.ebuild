# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RTHOMPSON
MODULE_VERSION=0.163250
inherit perl-module

DESCRIPTION='Automatically convert POD to a README in any format for Dist::Zilla'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_runtime() {
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterBuild
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileMunger
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FilePruner
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileWatcher
	echo dev-perl/Dist-Zilla-Role-FileWatcher
	# Dist::Zilla::Role::PPI
	echo dev-perl/Dist-Zilla
	# Encode
	echo virtual/perl-Encode
	# List::Util 1.33 ( 1.330.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.330.0
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# PPI::Document
	echo dev-perl/PPIx-XPath
	# Path::Tiny 0.004 ( 0.4.0 )
	echo \>=dev-perl/Path-Tiny-0.4.0
	# Pod::Markdown 2.000 ( 2.0.0 )
	echo \>=dev-perl/Pod-Markdown-2.0.0
	# Pod::Markdown::Github
	echo dev-perl/Pod-Markdown-Github
	# Pod::Simple::HTML 3.23 ( 3.230.0 )
	echo \>=virtual/perl-Pod-Simple-3.230.0
	# Pod::Simple::Text 3.23 ( 3.230.0 )
	echo \>=virtual/perl-Pod-Simple-3.230.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Carp
	echo virtual/perl-Carp
	# Dist::Zilla::Role::PluginBundle::Easy
	echo dev-perl/Dist-Zilla
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	echo dev-lang/perl
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.940.0
	# Test::Most
	echo dev-perl/Test-Most
	# Test::Requires
	echo dev-perl/Test-Requires
	# autodie
	echo virtual/perl-autodie
	# blib 1.01 ( 1.10.0 )
	echo \>=dev-lang/perl-1.10.0
	# lib
	# echo virtual/perl-lib
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# utf8
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
