# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=SIMONFLK
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION='Test-MockModule'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More 0.45 ( 0.450.0 )
	echo \>=virtual/perl-Test-Simple-0.45
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
