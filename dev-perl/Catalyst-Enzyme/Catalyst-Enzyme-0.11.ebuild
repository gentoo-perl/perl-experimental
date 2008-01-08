# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="CRUD framework for Catalyst"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/J/JO/JOHANL/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Model-CDBI-0.10
	dev-perl/Catalyst-Plugin-FormValidator
	dev-perl/Catalyst-View-TT-ControllerLocal
	dev-perl/Catalyst-Plugin-DefaultEnd
	>=dev-perl/Data-FormValidator-4.02
	>=dev-perl/Class-DBI-0.96
	>=dev-perl/Class-DBI-SQLite-0.09
	>=dev-perl/Class-DBI-Plugin-Type-0.02
	>=dev-perl/Class-DBI-FromForm-0.03
	>=dev-perl/Class-DBI-AsForm-2.42
	dev-perl/Class-DBI-Pager
	dev-perl/DBI-Shell
	dev-perl/HTML-Tree
	dev-perl/URI
	dev-perl/Path-Class
	dev-perl/File-Slurp
"
