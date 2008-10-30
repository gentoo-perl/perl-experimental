# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=PERIGRIN
inherit perl-module

DESCRIPTION="JSON::Any - Wrapper Class for the various JSON classes."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="json-xs json-syck"
DEPEND="
	>=dev-perl/JSON-2.02
	json-xs? ( >=dev-perl/JSON-XS-2.01 )
	json-syck? ( dev-perl/YAML-Syck )
"

