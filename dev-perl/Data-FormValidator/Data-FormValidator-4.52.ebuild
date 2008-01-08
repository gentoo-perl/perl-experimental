# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Validates user input (usually from an HTML form) based on input profile."
SRC_URI="mirror://cpan/authors/id/M/MA/MARKSTOS/${P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

IUSE=""
DEPEND="
	dev-perl/module-build
	dev-perl/ImageSize
	>=dev-perl/Date-Calc-5.0
	>=dev-perl/File-MMagic-1.17
	>=dev-perl/MIME-Types-1.005
	dev-perl/regexp-common
"
