# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="A modern perl interactive shell"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/M/MS/MSTROUT/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

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

