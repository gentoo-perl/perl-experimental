# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=RBO
inherit perl-module

DESCRIPTION="A Catalyst View for Excel::Template::Plus"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Excel-Template-Plus-0.05
"
DEPEND="
	dev-perl/Test-Exception
"
