# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KHAMPTON
inherit perl-module

DESCRIPTION="Perl extension for generating SAX2 events from nested Perl data structures"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# CAUTION: Don't dep XML-SAX-Base, its something totally different 
# And collides with this.
COMMON_DEPEND="
	>=dev-perl/XML-SAX-0.96
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
