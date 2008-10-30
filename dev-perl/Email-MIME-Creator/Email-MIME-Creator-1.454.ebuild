# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="Email::MIME constructor for starting anew"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Email-MIME-1.82
	>=dev-perl/Email-MIME-Modifier-1.440
	>=dev-perl/Email-Simple-1.92
	>=dev-perl/Email-Simple-Creator-1.4
"

