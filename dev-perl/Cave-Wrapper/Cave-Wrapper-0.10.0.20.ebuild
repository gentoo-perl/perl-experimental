# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION="0.01000002"
inherit perl-module

DESCRIPTION="A Wrapper to the Paludis 'cave' Client"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=sys-apps/paludis-0.50.0
	dev-perl/Moose
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.88
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
