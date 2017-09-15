# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="A Tie::RefHash subclass with weakened references in the keys"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Variable-Magic
	virtual/perl-Tie-RefHash"
DEPEND="${RDEPEND}"
