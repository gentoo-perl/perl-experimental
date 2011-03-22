# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=AGRUNDMA
MODULE_VERSION="1.03"
inherit perl-module

DESCRIPTION="HTTP Body Parser"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="dev-perl/yaml"
DEPEND="${RDEPEND}"
SRC_TEST="do"
