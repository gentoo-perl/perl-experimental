# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
MODULE_AUTHOR=OLIVER
inherit perl-module

DESCRIPTION="A modern perl interactive shell"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/Moose-0.74
	>=dev-perl/MooseX-Object-Pluggable-0.0009
	>=dev-perl/MooseX-Getopt-0.18
	>=dev-perl/MooseX-AttributeHelpers-0.16
	dev-perl/namespace-clean
	dev-perl/File-HomeDir
	virtual/perl-File-Spec
	virtual/perl-Term-ANSIColor
	dev-perl/Task-Weaken

	dev-perl/PPI
	dev-perl/Data-Dump-Streamer
	dev-perl/File-Next
	dev-perl/B-Keywords
	dev-perl/Lexical-Persistence
	dev-perl/App-Nopaste
	dev-perl/Module-Refresh
"
# B::Concise? => perl
# Devel::Peek => perl
# Term::ReadLine => perl

DEPEND="
	${RDEPEND}"
SRC_TEST="do"
