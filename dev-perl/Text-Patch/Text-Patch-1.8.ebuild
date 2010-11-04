# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="CADE"
inherit perl-module

DESCRIPTION="Patches text with given patch"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/Text-Diff
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
