# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=JSWARTZ
inherit perl-module

DESCRIPTION="Adapter to use Log::Dispatch with Log::Any"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Log-Any-Adapter
	>=dev-perl/log-dispatch-2.26
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-File-Temp-0.20
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
