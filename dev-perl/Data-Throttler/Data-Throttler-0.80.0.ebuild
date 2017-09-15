# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=MSCHILLI
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="Limit data throughput"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# YAML -> yaml
RDEPEND="dev-perl/Set-IntSpan
	>=dev-perl/Log-Log4perl-1.0.0
	>=dev-perl/YAML-0.620.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
