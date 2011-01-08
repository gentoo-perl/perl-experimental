# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Encodes text to be safe in JavaScript"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Template-Toolkit"
DEPEND="${RDEPEND}"

SRC_TEST=do
