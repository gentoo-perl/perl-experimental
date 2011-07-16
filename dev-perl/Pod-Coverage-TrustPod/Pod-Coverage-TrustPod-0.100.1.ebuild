# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.100001
inherit perl-module

DESCRIPTION="allow a module's pod to contain Pod::Coverage hints"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Pod-Coverage $(comment Pod::Coverage::COuntParents)
	dev-perl/Pod-Eventual $(comment Pod::Eventual::Simple)
	virtual/perl-PodParser $(comment Pod::Find)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
