# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=CLACO
inherit perl-module

DESCRIPTION="Container class for currency conversion/formatting"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Class-Accessor-Grouped-0.03
	dev-perl/Class-Inspector
	>=dev-perl/Finance-Currency-Convert-WebserviceX-0.03
	>=dev-perl/Locale-Codes-2.70.0
	>=dev-perl/Locale-Currency-Format-1.22
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
