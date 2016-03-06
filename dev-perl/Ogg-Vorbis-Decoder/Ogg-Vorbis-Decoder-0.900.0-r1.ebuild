# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DANIEL
MODULE_VERSION=0.9
inherit perl-module

DESCRIPTION="An object-oriented Ogg Vorbis to decoder"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	media-libs/libvorbis
	media-libs/libogg
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
