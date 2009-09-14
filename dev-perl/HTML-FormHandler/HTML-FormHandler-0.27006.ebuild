# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=GSHANK
inherit perl-module

DESCRIPTION="form handler written in Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.70
	>=dev-perl/MooseX-AttributeHelpers-0.14
	>=virtual/perl-locale-maketext-1.09
	dev-perl/DateTime
	dev-perl/HTML-Parser
	>=dev-perl/MooseX-Getopt-0.16
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	dev-perl/aliased
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.77
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
