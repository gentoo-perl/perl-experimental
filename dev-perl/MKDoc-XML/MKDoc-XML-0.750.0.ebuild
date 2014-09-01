# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BPOSTLE
MODULE_VERSION=0.75
inherit perl-module

DESCRIPTION="The MKDoc XML Toolkit"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# Test::More -> Test-Simple
# Scalar::Util -> Scalar-List-Utils
RDEPEND="
	>=virtual/perl-Test-Simple-0.470.0
	>=virtual/perl-Scalar-List-Utils-1.70.0
"
DEPEND="${RDEPEND}"

SRC_TEST="do parallel"
