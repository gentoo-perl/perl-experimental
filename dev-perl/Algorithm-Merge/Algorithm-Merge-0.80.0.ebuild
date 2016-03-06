# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_VERSION=0.08
MODULE_AUTHOR=JSMITH
inherit perl-module

DESCRIPTION="Three-way merge and diff"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Algorithm-Diff
"
DEPEND="${RDEPEND}"

SRC_TEST='do parallel'
