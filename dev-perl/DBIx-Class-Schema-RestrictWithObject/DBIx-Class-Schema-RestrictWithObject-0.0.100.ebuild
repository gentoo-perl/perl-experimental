# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GRODITI
MODULE_VERSION=0.0001
inherit perl-module

DESCRIPTION=" Automatically restrict resultsets"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/DBIx-Class-0.70.0
"
DEPEND="${RDEPEND}"

SRC_TEST=do
