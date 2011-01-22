# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=STEVAN
MODULE_VERSION="0.02"
inherit perl-module

DESCRIPTION="Simple role to provide a standard param method"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Moose-0.32
"
DEPEND="
	virtual/perl-Module-Build
	>=dev-perl/Test-Exception-0.21
	${RDEPEND}
"
SRC_TEST=do
