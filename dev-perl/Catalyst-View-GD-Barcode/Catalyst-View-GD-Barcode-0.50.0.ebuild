# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=YANA
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Make it easy to use GD::Barcode in Catalyst's View."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.570.0
	>=dev-perl/GD-Barcode-1.150.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
