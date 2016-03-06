# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

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
