# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RCLAMP
inherit perl-module

DESCRIPTION="Allow calling of class methods on arbitrary classes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/Template-Toolkit"
RDEPEND="${DEPEND}"

SRC_TEST=do
