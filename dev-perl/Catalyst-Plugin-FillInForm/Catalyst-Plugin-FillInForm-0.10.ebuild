# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="FillInForm for Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/HTML-FillInForm
	>=dev-perl/Catalyst-Runtime-5.701.200
"
RDEPEND="$DEPEND"
SRC_TEST=do
