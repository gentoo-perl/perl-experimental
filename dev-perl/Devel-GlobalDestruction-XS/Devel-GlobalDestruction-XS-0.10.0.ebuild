# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RIBASUSHI
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION='Faster implementation of the Devel::GlobalDestruction API'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::CBuilder 0.27 ( 0.270.0 )
	echo \>=virtual/perl-ExtUtils-CBuilder-0.270.0
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
