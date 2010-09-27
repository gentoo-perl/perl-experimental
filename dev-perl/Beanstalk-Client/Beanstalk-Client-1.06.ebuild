# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=GBARR
inherit perl-module

DESCRIPTION="Client class to talk to beanstalkd server"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/YAML-Syck
	dev-perl/Class-Accessor
	virtual/perl-IO
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
