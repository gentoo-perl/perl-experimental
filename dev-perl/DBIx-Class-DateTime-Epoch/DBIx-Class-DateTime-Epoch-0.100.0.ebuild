# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BRICAS
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION='Automatic inflation/deflation of epoch-based columns to/from DateTime objects'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# DBICx::TestDatabase
	echo dev-perl/DBICx-TestDatabase
	# DateTime::Format::SQLite
	echo dev-perl/DateTime-Format-SQLite
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# DBIx::Class 0.08103 ( 0.81.30 )
	echo \>=dev-perl/DBIx-Class-0.81.30
	# DBIx::Class::TimeStamp 0.07 ( 0.70.0 )
	echo \>=dev-perl/DBIx-Class-TimeStamp-0.70.0
	# DateTime
	echo dev-perl/DateTime
	# perl v5.6.1 ( 5.6.1 )
	echo \>=dev-lang/perl-5.6.1
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
