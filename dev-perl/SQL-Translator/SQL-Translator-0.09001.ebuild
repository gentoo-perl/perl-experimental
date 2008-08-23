# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="manipulate structured data definitions (SQL and more)"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/J/JR/JROBINSON/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	dev-perl/module-build
	dev-perl/Class-Base
	>=dev-perl/Class-Data-Inheritable-0.02
	dev-perl/Class-MakeMethods
	>=dev-perl/Digest-SHA1-2.00
	dev-perl/Log-Log4perl
	>=dev-perl/Parse-RecDescent-1.94
	dev-perl/Class-Accessor
	dev-perl/DBI
	>=dev-perl/yaml-0.39
"
