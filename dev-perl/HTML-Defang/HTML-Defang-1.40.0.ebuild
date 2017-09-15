# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=KURIANJA
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Cleans HTML as well as CSS of scripting and other executable contents, and neutralises XSS attacks."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Exporter
		 virtual/perl-constant
		 virtual/perl-Encode"
DEPEND="$RDEPEND"
