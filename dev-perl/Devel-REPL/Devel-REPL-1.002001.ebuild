# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=MSTROUT
inherit perl-module

DESCRIPTION="A modern perl interactive shell"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Moose-0.38
	>=dev-perl/MooseX-Object-Pluggable-0.0007
	dev-perl/MooseX-Getopt
	dev-perl/namespace-clean
	dev-perl/Lexical-Persistence
	dev-perl/Data-Dump-Streamer
	dev-perl/PPI
	dev-perl/B-Keywords
	dev-perl/B-Utils
	dev-perl/Clone
"

