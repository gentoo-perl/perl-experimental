# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MAUKE
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION='return across multiple call levels'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Exporter
	echo virtual/perl-Exporter
	# parent
	echo virtual/perl-parent
	# perl 5.008000 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
}
perl_meta_test() {
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
