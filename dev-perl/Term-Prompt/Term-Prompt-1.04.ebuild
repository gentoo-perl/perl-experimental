# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=PERSICOM
inherit perl-module

DESCRIPTION="Perl extension for prompting a user for information"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/TermReadKey-1.0
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
