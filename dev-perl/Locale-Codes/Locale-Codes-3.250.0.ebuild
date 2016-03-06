# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=SBECK
MODULE_VERSION=3.25
inherit perl-module

DESCRIPTION='a distribution of modules to handle locale codes'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.39 ( 0.390.0 )
	echo \>=dev-perl/Module-Build-0.390.0
}
perl_meta_build() {
	# Storable
	echo virtual/perl-Storable
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# perl 5.002 ( 5.2.0 )
	echo \>=dev-lang/perl-5.2.0
	# utf8
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
