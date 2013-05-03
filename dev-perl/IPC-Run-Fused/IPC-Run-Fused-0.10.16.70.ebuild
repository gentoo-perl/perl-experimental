# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
MODULE_VERSION="0.01001607"
inherit perl-module

DESCRIPTION="Capture Stdout/Stderr simultaneously as if it were one stream, painlessly"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-IO
	dev-perl/Sub-Exporter
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
