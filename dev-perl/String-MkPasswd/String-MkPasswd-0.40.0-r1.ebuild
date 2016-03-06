# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CGRAU
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='random password generator'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Carp
	#echo virtual/perl-Carp
	# Exporter
	echo virtual/perl-Exporter
	# File::Basename
	echo dev-lang/perl
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# Text::Wrap
	echo virtual/perl-Text-Tabs+Wrap
	# base
	# echo virtual/perl-base
	# constant
	echo virtual/perl-constant
	# perl 5.006001 ( 5.6.1 )
	echo \>=dev-lang/perl-5.6.1
	# strict
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
