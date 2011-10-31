# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.101080
inherit perl-module

DESCRIPTION='does your code require newer perl than you think?'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Tester
	echo dev-perl/Test-Tester
}
perl_meta_runtime() {
	# Exporter
	# echo dev-perl/Exporter
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::Find::Rule::Perl
	echo dev-perl/File-Find-Rule-Perl
	# Perl::MinimumVersion 1.20 ( 1.200.0 )
	echo \>=dev-perl/Perl-MinimumVersion-1.200.0
	# Test::Builder
	echo virtual/perl-Test-Simple
	# YAML::Tiny 1.40 ( 1.400.0 )
	echo \>=dev-perl/YAML-Tiny-1.40
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# version 0.70 ( 0.700.0 )
	echo \>=virtual/perl-version-0.70
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
