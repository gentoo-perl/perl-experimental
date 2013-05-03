# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="General purpose BerkeleyDB wrapper"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/Test-use-ok
	>=dev-perl/Test-TempDir-0.40.0
	dev-perl/Test-Exception
	dev-perl/Moose
	>=dev-perl/namespace-clean-0.80.0
	>=dev-perl/BerkeleyDB-0.36
	>=dev-perl/Data-Stream-Bulk-0.30.0
	dev-perl/Path-Class
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="${COMMON_DEPEND}"

SRC_TEST=do
