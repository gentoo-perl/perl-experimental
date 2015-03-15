# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.12"
inherit perl-module

DESCRIPTION="use KiokuDB in your Catalyst apps"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Catalyst -> Catalyst-Runtime
RDEPEND="
	>=dev-perl/KiokuDB-0.460.0
	dev-perl/KiokuX-Model
	>=dev-perl/Catalyst-Runtime-5.800.0
	dev-perl/Moose
	dev-perl/Scope-Guard
	dev-perl/Hash-Util-FieldHash-Compat
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/KiokuX-User
"
DEPEND="${RDEPEND}"
