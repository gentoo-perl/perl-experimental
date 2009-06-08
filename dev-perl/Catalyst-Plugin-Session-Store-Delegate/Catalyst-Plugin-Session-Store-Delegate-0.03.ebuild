# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Delegate session storage to an application model object."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.12
	dev-perl/Class-Accessor
	dev-perl/Test-use-ok
	dev-perl/MRO-Compat
"
RDEPEND="${DEPEND}"
