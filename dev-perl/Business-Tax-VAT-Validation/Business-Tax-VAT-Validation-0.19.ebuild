# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BPGN
inherit perl-module

DESCRIPTION="A class for european VAT numbers validation."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/libwww-perl
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
