# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PEVANS
MODULE_VERSION=1.95
inherit perl-module

DESCRIPTION='Socket'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::CChecker
	echo dev-perl/ExtUtils-CChecker
	# ExtUtils::Constant 0.23 ( 0.230.0 )
	echo \>=virtual/perl-ExtUtils-Constant-0.230.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do"
