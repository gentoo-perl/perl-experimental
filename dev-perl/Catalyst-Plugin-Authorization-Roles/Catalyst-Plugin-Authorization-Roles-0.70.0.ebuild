# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BRICAS
MODULE_VERSION="0.07"
inherit perl-module

DESCRIPTION="Role based authorization for Catalyst based on Catalyst::Plugin::Authentication"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.30
	>=dev-perl/Set-Object-1.14
	>=dev-perl/UNIVERSAL-isa-0.05
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
