# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DROLSKY
MODULE_VERSION="0.02"
inherit perl-module

DESCRIPTION="Pod::Coverage extension for Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.240.0
	>=dev-perl/namespace-clean-0.50.0
	dev-perl/Pod-Coverage
	dev-perl/Perl6-Junction
	>=dev-perl/Moose-1.990.0
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	dev-perl/Test-Pod
	dev-perl/Test-Pod-Coverage
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
