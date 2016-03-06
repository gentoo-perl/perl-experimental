# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ALEXP
MODULE_VERSION=0.32
inherit perl-module

DESCRIPTION='Helper for DBI Models'
LICENSE="|| ( Artistic GPL-2 )"
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
	# Catalyst 5.00 ( 5.0.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.0.0
	# DBI
	echo dev-perl/DBI
	# DBIx::Connector
	echo dev-perl/DBIx-Connector
	# MRO::Compat
	echo dev-perl/MRO-Compat
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
