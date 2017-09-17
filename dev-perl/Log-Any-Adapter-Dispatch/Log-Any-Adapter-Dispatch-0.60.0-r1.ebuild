# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Adapter to use Log::Dispatch with Log::Any"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# Log::Any::Adapter -> Log-Any 0.900.0
RDEPEND="
	>=dev-perl/Log-Any-0.900.0
	>=dev-perl/Log-Dispatch-2.260.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	>=virtual/perl-File-Temp-0.200.0
	virtual/perl-Test-Simple
"
