# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_VERSION=0.12
MODULE_AUTHOR=GAAL
inherit perl-module

DESCRIPTION="Fallbackable module loader"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

SRC_TEST=do
PREFER_BUILDPL=no
