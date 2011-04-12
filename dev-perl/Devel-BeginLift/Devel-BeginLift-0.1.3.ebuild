# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FLORA
MODULE_VERSION="0.001003"
inherit perl-module

DESCRIPTION="Make selected sub calls evaluate at compile time"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/B-Hooks-OP-Check-EntersubForCV-0.30.0"
DEPEND="${RDEPEND}"

SRC_TEST="do"
