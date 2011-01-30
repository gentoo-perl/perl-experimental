# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION="0.046"
inherit perl-module perl-declaredeps

DESCRIPTION="Globally unique identifiers"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

depend Data-UUID 1.148;
depend Sub-Exporter 0.90;
depend Sub-Install 0.03;
depend-virtual Test-Simple; # Test::More
bdepend-virtual ExtUtils-MakeMaker 6.46;

ddep_setup;

SRC_TEST="do"
