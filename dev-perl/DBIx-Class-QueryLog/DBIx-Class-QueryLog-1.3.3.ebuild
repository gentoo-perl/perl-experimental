# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=GPHAT
MODULE_VERSION=1.3.3
inherit perl-module

DESCRIPTION='Log queries for later analysis.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_runtime() {
	# Class::Accessor
	echo dev-perl/Class-Accessor
	# DBIx::Class 0.07000 ( 0.70.0 )
	echo \>=dev-perl/DBIx-Class-0.70.0
	# Moose 0.90 ( 0.900.0 )
	echo \>=dev-perl/Moose-0.900.0
	# Test::More
	echo virtual/perl-Test-Simple
	# Time::HiRes
	echo virtual/perl-Time-HiRes
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
