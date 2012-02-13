# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=PETDANCE
inherit perl-module

DESCRIPTION="Check for HTML errors in a string or file"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/HTML-Parser-3.20
	>=dev-perl/HTML-Tagset-3.03
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
