# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="Adapt CGI.pm to the PSGI protocol"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=virtual/perl-CGI-3.330.0
"
DEPEND="
	${COMMON_DEPEND}
	test? (
			>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
