# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="ISO8601 date and duration string type constraints and coercions for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/namespace-autoclean-0.05
	>=dev-perl/DateTime-0.41
	dev-perl/List-MoreUtils
	dev-perl/Try-Tiny
	>=dev-perl/MooseX-Types-DateTime-0.03
	>=dev-perl/DateTime-Format-Duration-1.03
	>=dev-perl/Moose-0.79
	>=dev-perl/MooseX-Types-0.10
"
DEPEND="${RDEPEND}
	dev-perl/Test-Exception
	>=virtual/perl-ExtUtils-MakeMaker-6.42
	>=virtual/perl-Test-Simple-0.88
"

SRC_TEST=do
