# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CF/CFRANKS/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	dev-perl/DateTime-Format-MySQL
    dev-perl/DBD-SQLite
    >=dev-perl/DBIx-Class-0.08002
    >=dev-perl/HTML-FormFu-0.03003
	dev-perl/Task-Weaken
"

