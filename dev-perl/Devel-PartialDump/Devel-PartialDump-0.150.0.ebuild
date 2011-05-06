# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="Partial dumping of data structures, optimized for argument printing."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Moose
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	>=dev-perl/namespace-clean-0.200
	dev-perl/Sub-Exporter
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
		>=dev-perl/Test-Warn-0.21 $(comment 0.210.0)
	)
"
SRC_TEST="do"
