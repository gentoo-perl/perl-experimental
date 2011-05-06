# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=0.267
inherit perl-module

DESCRIPTION="manage connections, with keep-alive"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Net-IP-1.25 $(comment 1.250.0)
	>=dev-perl/POE-1.311.0
	>=dev-perl/POE-Component-Resolver-0.912.0
"
DEPEND="
	${RDEPEND}
	$(comment configure)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)

"

SRC_TEST="do"
