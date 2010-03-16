# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="weave together a Pod document from an outline"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Config-MVP-0.093120
	dev-perl/List-MoreUtils
	>=dev-perl/Log-Dispatchouli-1.100.710
	dev-perl/Moose
	>=dev-perl/Moose-Autobox-0.10
	dev-perl/PPI
	>=dev-perl/Pod-Elemental-0.092941
	>=dev-perl/String-Flogger-1
	>=dev-perl/Config-INI-MVP-0.024
	>=dev-perl/Pod-Eventual-0.004
	dev-perl/Software-License
	dev-perl/String-RewritePrefix
	dev-perl/namespace-autoclean
	"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Differences
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
