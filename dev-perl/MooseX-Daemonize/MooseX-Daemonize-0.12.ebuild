# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=STEVAN
inherit perl-module

DESCRIPTION="Role for daemonizing your Moose based application"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Moose-0.33
	>=dev-perl/MooseX-Getopt-0.07
	dev-perl/MooseX-Types-Path-Class
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
