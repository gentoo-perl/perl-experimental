# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION=3.101632
inherit perl-module

DESCRIPTION="weave together a Pod document from an outline"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Config-MVP-2
	dev-perl/Config-MVP-Reader-INI
	dev-perl/DateTime
	virtual/perl-File-Spec
	dev-perl/List-MoreUtils
	>=dev-perl/Log-Dispatchouli-1.100.710
	dev-perl/Moose
	>=dev-perl/Moose-Autobox-0.100.0
	dev-perl/Params-Util
	>=dev-perl/Pod-Elemental-0.100.220
	>=dev-perl/String-Flogger-1
	dev-perl/String-Formatter
	dev-perl/String-RewritePrefix
	dev-perl/namespace-autoclean
	"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/PPI
	dev-perl/Software-License
	dev-perl/Test-Differences
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
