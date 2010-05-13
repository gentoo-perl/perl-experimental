# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="A Tie::RefHash subclass with weakened references in the keys"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Variable-Magic
	dev-perl/Tie-RefHash"
DEPEND="${RDEPEND}"

SRC_TEST=do
