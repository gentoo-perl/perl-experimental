# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=SAMV
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION='Include constants from POD'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# Pod::Parser 1.13 ( 1.130.0 )
	echo \>=virtual/perl-Pod-Parser-1.130.0
	# Test::Simple 0.18 ( 0.180.0 )
	echo \>=virtual/perl-Test-Simple-0.18
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
