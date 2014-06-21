# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FRACTAL
MODULE_VERSION=0.300
inherit perl-module

DESCRIPTION='Timing side-channel protected string compare'
LICENSE="Artistic"
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
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do parallel"
