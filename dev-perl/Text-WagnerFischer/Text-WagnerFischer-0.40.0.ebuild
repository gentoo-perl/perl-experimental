# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=DAVIDEBE
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="An implementation of the Wagner-Fischer edit distance"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Exporter"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
