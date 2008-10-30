# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=BLBLACK
inherit perl-module

DESCRIPTION="Lets you build groups of accessors"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	|| (
		>=dev-perl/perl-5.10.0
		( >=dev-perl/Class-C3-0.19 >=dev-perl/Class-C3-XS-0.08 )
	)
"
