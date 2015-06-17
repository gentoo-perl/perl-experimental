# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=VPIT
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION='CPANPLUS backend generating Gentoo ebuilds.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# CPANPLUS
	echo dev-perl/CPANPLUS
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Copy
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec
	echo virtual/perl-File-Spec
	# IPC::Cmd
	echo virtual/perl-IPC-Cmd
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Parse::CPAN::Meta
	echo virtual/perl-Parse-CPAN-Meta
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More
	echo virtual/perl-Test-Simple
	# base
	# echo virtual/perl-base
}
perl_meta_runtime() {
	# CPANPLUS
	echo dev-perl/CPANPLUS
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# File::Copy
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec
	echo virtual/perl-File-Spec
	# IPC::Cmd
	echo virtual/perl-IPC-Cmd
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Parse::CPAN::Meta
	echo virtual/perl-Parse-CPAN-Meta
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# base
	# echo virtual/perl-base
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
