# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Pod::Coverage extension for Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.24
	>=dev-perl/namespace-clean-0.05
	dev-perl/Pod-Coverage
	dev-perl/Perl6-Junction
	dev-perl/Class-MOP
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
