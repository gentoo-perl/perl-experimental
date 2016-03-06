# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=GFUJI
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='Lightweight field hash for inside-out objects'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# CPAN::Meta
	echo virtual/perl-CPAN-Meta
	# CPAN::Meta::Prereqs
	echo virtual/perl-CPAN-Meta
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_build() {
	# Devel::PPPort 3.19 ( 3.190.0 )
	echo \>=virtual/perl-Devel-PPPort-3.190.0
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# ExtUtils::ParseXS 2.21 ( 2.210.0 )
	echo \>=virtual/perl-ExtUtils-ParseXS-2.21
	# Test::LeakTrace 0.07 ( 0.70.0 )
	echo \>=dev-perl/Test-LeakTrace-0.70.0
	# Test::More 0.62 ( 0.620.0 )
	echo \>=virtual/perl-Test-Simple-0.62
}
perl_meta_runtime() {
	# XSLoader 0.02 ( 0.20.0 )
	echo \>=virtual/perl-XSLoader-0.02
	# parent 0.221 ( 0.221.0 )
	echo \>=virtual/perl-parent-0.221
	# perl 5.008005 ( 5.8.5 )
	echo \>=dev-lang/perl-5.8.5
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
