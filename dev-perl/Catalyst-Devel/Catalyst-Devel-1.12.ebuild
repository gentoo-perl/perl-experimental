# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Catalyst Development Tools"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.7000
	>=dev-perl/Catalyst-Action-RenderView-0.04
	>=dev-perl/Catalyst-Plugin-Static-Simple-0.16
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Class-Accessor
	dev-perl/config-general
	dev-perl/File-Copy-Recursive
	>=dev-perl/Module-Install-0.64
	dev-perl/parent
	>=dev-perl/Path-Class-0.09
	>=dev-perl/Template-Toolkit-2.14
"

