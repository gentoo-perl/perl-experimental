# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=INGY
MODULE_VERSION="0.17"
inherit perl-module

DESCRIPTION="See your data in the nude"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/yaml
"
# >=Test-More-0.47
RDEPEND="${DEPEND}"
SRC_TEST="do"
