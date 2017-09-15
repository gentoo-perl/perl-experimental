# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=JALLWINE
MODULE_VERSION=1.09
inherit perl-module

DESCRIPTION="HTML form generator"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${PN}"
SRC_TEST=do
