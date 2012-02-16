# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ABRAXXA
MODULE_VERSION=0.02006
inherit perl-module

DESCRIPTION='Implicit uuid columns'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# DBD::SQLite 1.11 ( 1.110.0 )
	echo \>=dev-perl/DBD-SQLite-1.11
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_runtime() {
	# Class::Accessor::Grouped
	echo dev-perl/Class-Accessor-Grouped
	# DBIx::Class 0.07005 ( 0.70.50 )
	echo \>=dev-perl/DBIx-Class-0.07005
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
