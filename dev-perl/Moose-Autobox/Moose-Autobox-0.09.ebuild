# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="Autoboxed wrappers for Native Perl datatypes"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/autobox-2.23
	>=dev-perl/Moose-0.32
	>=dev-perl/Perl6-Junction-1.40000
"
DEPEND="
	>=dev-perl/Test-Exception-0.21
	${RDEPEND}
"
