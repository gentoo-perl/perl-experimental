# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="increment module version numbers simply and correctly"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Sub-Exporter
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	>=dev-perl/Test-Exception-0.29
	>=virtual/perl-Test-Simple-0.88
	virtual/perl-File-Temp
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
