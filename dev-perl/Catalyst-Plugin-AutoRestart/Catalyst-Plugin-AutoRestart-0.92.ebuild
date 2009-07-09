# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst plugin to restart server processes when specified memory threshold is reached"
HOMEPAGE="http://search.cpan.org/dist/Catalyst-Plugin-AutoRestart/"
SRC_URI="mirror://cpan/authors/id/J/JG/JGOULAH/${P}.tar.gz"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 s390 sh sparc sparc-fbsd x86 x86-fbsd"
LICENSE="|| ( Artistic GPL-2 )"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/Catalyst-Runtime-5.7007
	>=dev-perl/Class-C3-0.19
	dev-perl/Class-Data-Accessor
	>=dev-perl/Text-SimpleTable-0.03
	>=dev-perl/Proc-ProcessTable-0.41"
DEPEND="${RDEPEND}"
