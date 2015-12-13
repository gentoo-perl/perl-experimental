# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MAUKE
MODULE_VERSION=0.095
inherit perl-module

DESCRIPTION="various utility functions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Exporter
"

DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.480.0
	virtual/perl-Test-Simple
	dev-perl/Test-Warnings
"
