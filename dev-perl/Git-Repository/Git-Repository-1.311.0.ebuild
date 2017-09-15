# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BOOK
MODULE_VERSION=1.311
inherit perl-module

DESCRIPTION='Perl interface to Git repositories'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# File::Find
	# echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# constant
	# echo virtual/perl-constant
	# lib
	# echo virtual/perl-lib
	# overload
	# echo dev-lang/perl
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# Exporter
	echo virtual/perl-Exporter
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Handle
	echo virtual/perl-IO
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# System::Command 1.103 ( 1.103.0 )
	echo \>=dev-perl/System-Command-1.103.0
	# Test::Builder
	echo virtual/perl-Test-Simple
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	#echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
DEPEND="
	dev-vcs/git
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	dev-vcs/git
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
