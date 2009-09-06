# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=GAUDEON
inherit perl-module

DESCRIPTION="Takes a nested array and outputs CSV formatted content."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Text-CSV
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
