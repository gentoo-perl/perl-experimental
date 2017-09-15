# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=GIULIENK
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Convert personal data into italian Codice Fiscale"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Test-Simple
	virtual/perl-Time-Piece
	dev-perl/Class-Data-Inheritable
"
DEPEND="$RDEPEND"

SRC_TEST=do
