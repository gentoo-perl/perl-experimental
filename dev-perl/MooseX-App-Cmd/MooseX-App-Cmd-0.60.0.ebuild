# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
MODULE_VERSION="0.06"
inherit perl-module

DESCRIPTION="Mashes up MooseX::Getopt and App::Cmd."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Test-use-ok
	>=dev-perl/App-Cmd-0.300.0
	>=dev-perl/Moose-0.86
	>=dev-perl/MooseX-Getopt-0.18
	dev-perl/Getopt-Long-Descriptive
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
