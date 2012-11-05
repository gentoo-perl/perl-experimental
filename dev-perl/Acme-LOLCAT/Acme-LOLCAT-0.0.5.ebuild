# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KCOWGILL
MODULE_VERSION=0.0.5
inherit perl-module

DESCRIPTION='SPEEK LIEK A LOLCATZ'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
