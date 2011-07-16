# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=STEVAN
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION="Role for daemonizing your Moose based application"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Moose-0.33 $(comment 0.330.0)
	>=dev-perl/MooseX-Getopt-0.07 $(comment 0.70.0)
	dev-perl/MooseX-Types-Path-Class
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple $(comment Test::More)
	>=dev-perl/Moose-0.25 $(comment Test::Moose first version)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
