# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=OLIVER
inherit perl-module

DESCRIPTION="A modern perl interactive shell"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Moose-0.64
	>=dev-perl/MooseX-Object-Pluggable-0.0009
	>=dev-perl/MooseX-Getopt-0.15
	>=dev-perl/MooseX-AttributeHelpers-0.14
	dev-perl/namespace-clean
	dev-perl/File-HomeDir
	dev-perl/Task-Weaken

	dev-perl/PPI
	dev-perl/Data-Dump-Streamer
	dev-perl/File-Next
	dev-perl/B-Keywords
	dev-perl/Lexical-Persistence
	dev-perl/App-Nopaste
	dev-perl/Module-Refresh
"

