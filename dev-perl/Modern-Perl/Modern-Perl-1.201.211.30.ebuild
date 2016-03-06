# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CHROMATIC
MODULE_VERSION=1.20121103
inherit perl-module

DESCRIPTION='enable all of the features of Modern Perl with one import'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
}
perl_meta_runtime() {
	# IO::File
	echo virtual/perl-IO
	# IO::Handle
	echo virtual/perl-IO
	# autodie 2.10 ( 2.100.0 )
	echo \>=virtual/perl-autodie-2.100.0
	# feature
	echo dev-lang/perl
	# mro
	echo dev-lang/perl
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
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
SRC_TEST="do"
