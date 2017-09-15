# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=JDIEPEN
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='Portable reading and writing of sound files'
LICENSE="GPL-2"
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
	media-libs/libsndfile
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="
	media-libs/libsndfile
"
