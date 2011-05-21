# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NKH
MODULE_VERSION="0.37"
inherit perl-module

DESCRIPTION="Improved replacement for Data::Dumper. Powerful filtering capability"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-Text-Tabs+Wrap
	dev-perl/Devel-Size
	dev-perl/Check-ISA
	virtual/perl-Class-ISA
	dev-perl/Sort-Naturally
	dev-perl/Term-Size"
RDEPEND="${DEPEND}"

SRC_TEST=do
