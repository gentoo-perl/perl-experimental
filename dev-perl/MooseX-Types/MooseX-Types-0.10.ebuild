# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=JJNAPIORK
inherit perl-module

DESCRIPTION="Organise your Moose types in libraries"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Moose-0.61
	>=dev-perl/Sub-Install-0.924
	>=dev-perl/namespace-clean-0.08
"

