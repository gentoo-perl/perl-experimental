# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BOOK
MODULE_VERSION=1.108
inherit perl-module

DESCRIPTION='Object for running system commands'
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
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Fcntl
	# echo dev-lang/perl
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Run
	echo dev-perl/IPC-Run
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# POSIX
	# echo dev-lang/perl
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Symbol
	# echo dev-lang/perl
	# constant
	# echo virtual/perl-constant
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
