# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=FREW
inherit perl-module

DESCRIPTION="Manipulate and anaylze tree structured data."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/DBIx-Class-0.08100
"
DEPEND="${RDEPEND}"

SRC_TEST=do
