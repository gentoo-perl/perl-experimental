# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="A visitor for Perl data structures"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Class-Accessor
	>=dev-perl/Test-MockObject-1.04
	dev-perl/Test-use-ok
	>=dev-perl/Tie-ToObject-0.01
"
