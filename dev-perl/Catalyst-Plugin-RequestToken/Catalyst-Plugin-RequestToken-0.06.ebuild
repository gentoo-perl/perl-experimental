# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=HIDE
inherit perl-module

DESCRIPTION="(DEPRECATED) Handling transaction token for Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-Plugin-Session
"

pkg_setup() {
	ewarn "This ebuild is DEPRECATED and will be removed."
	ewarn "Please use Catalyst-Controller-RequestToken!!!"
}
