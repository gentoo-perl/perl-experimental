# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SALVA
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION='find clusters inside a set of points'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_runtime() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_test(){
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
SRC_TEST="do"
