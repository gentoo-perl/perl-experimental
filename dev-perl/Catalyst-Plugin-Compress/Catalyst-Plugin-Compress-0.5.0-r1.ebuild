# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=XINMING
MODULE_VERSION=0.005
inherit perl-module

DESCRIPTION="Compress response"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	virtual/perl-IO-Compress $(comment Compress::Zlib)
	dev-perl/MRO-Compat
	>=dev-perl/Catalyst-Runtime-5.800.10
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
