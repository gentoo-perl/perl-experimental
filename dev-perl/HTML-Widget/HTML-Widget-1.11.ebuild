# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="HTML Widget And Validation Framework"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CF/CFRANKS/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	>=dev-lang/perl-5.8.1
	dev-perl/Module-Install
	>=dev-perl/HTML-Tree-3.23
	dev-perl/Class-Accessor
	dev-perl/Class-Accessor-Chained
	dev-perl/Class-Data-Accessor
	dev-perl/HTML-Scrubber
	dev-perl/Module-Pluggable-Fast
	dev-perl/Email-Valid
	dev-perl/Date-Calc
	dev-perl/Test-NoWarnings
"
