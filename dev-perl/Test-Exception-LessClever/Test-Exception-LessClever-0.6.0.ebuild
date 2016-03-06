# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION='Test::Exception simplified'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_build() {
	# Mock::Quick 1.100 ( 1.100.0 )
	echo \>=dev-perl/Mock-Quick-1.100.0
	# Test::Simple 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Exporter
	echo virtual/perl-Exporter
	# Test::Builder
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
SRC_TEST="do"
