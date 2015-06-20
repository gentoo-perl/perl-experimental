# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=WALTMAN
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='Convert between degrees/minutes/seconds and decimal degrees'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
DEPEND="
	dev-perl/Test-Number-Delta
"
RDEPEND=""
SRC_TEST="do"
