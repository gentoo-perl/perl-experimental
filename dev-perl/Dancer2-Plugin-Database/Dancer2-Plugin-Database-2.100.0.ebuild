# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AMBS
MODULE_VERSION=2.10
MODULE_SECTION=Dancer
inherit perl-module

DESCRIPTION='easy database connections for Dancer2 applications'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Dancer2 0.09 ( 0.90.0 )
	echo \>=dev-perl/Dancer2-0.90.0
	# Dancer::Plugin::Database::Core 0.04 ( 0.40.0 )
	echo \>=dev-perl/Dancer-Plugin-Database-Core-0.40.0
	# Test::More
	echo virtual/perl-Test-Simple
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
