# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MRAMBERG
MODULE_VERSION="1.06"
inherit perl-module

DESCRIPTION="HTTP Body Parser"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Deep )"

SRC_TEST=do
