# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Load config files of various types"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.7008
	>=dev-perl/Data-Visitor-0.24
	>=dev-perl/Config-Any-0.08
	>=dev-perl/MRO-Compat-0.09
"
DEPEND="${RDEPEND}"

SRC_TEST=do
