# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="A visitor for Perl data structures"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Any-Moose-0.07
	>=dev-perl/namespace-clean-0.08
	>=dev-perl/Test-MockObject-1.04
	dev-perl/Test-use-ok
	>=dev-perl/Tie-ToObject-0.01
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
