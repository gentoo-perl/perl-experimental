# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.002
inherit perl-module

DESCRIPTION="increment module version numbers simply and correctly"

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
