# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RWSTAUNER
MODULE_VERSION=0.925
inherit perl-module

DESCRIPTION='Information about a perl module distribution'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Archive::Tar 1 ( 1.0.0 )
	echo \>=virtual/perl-Archive-Tar-1.00
	# Archive::Zip 1.30 ( 1.300.0 )
	echo \>=dev-perl/Archive-Zip-1.300.0
	# CPAN::DistnameInfo 0.12 ( 0.120.0 )
	echo \>=dev-perl/CPAN-DistnameInfo-0.120.0
	# CPAN::Meta 2.1 ( 2.100.0 )
	echo \>=virtual/perl-CPAN-Meta-2.100.0
	# Carp
	echo dev-lang/perl
	# Digest 1.03 ( 1.30.0 )
	echo \>=virtual/perl-Digest-1.30.0
	# Digest::MD5 2 ( 2.0.0 )
	echo \>=virtual/perl-Digest-MD5-2.00
	# Digest::SHA 5 ( 5.0.0 )
	echo \>=virtual/perl-Digest-SHA-5.0.0
	# File::Basename
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Spec::Native 1.002 ( 1.2.0 )
	echo \>=dev-perl/File-Spec-Native-1.2.0
	# File::Temp 0.19 ( 0.190.0 )
	echo \>=virtual/perl-File-Temp-0.190.0
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Module::Metadata
	echo virtual/perl-Module-Metadata
	# Path::Class 0.24 ( 0.240.0 )
	echo \>=dev-perl/Path-Class-0.240.0
	# Try::Tiny 0.09 ( 0.90.0 )
	echo \>=dev-perl/Try-Tiny-0.90.0
	# constant
	echo virtual/perl-constant
	# parent
	echo virtual/perl-parent
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::MockObject 1.09 ( 1.90.0 )
	echo \>=dev-perl/Test-MockObject-1.90.0
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.960.0
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
