# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="Easy MIME message parsing"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Email-MIME-ContentType-1.011
	>=dev-perl/Email-MIME-Encodings-1.3
	>=dev-perl/Email-Simple-2.003
	>=dev-perl/MIME-Types-1.13
"

