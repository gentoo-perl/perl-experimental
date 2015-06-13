# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=HDP
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION="Apply roles to a class related to yours"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/Moose-1.990.0
	>=dev-perl/MooseX-Role-Parameterized-0.40.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
