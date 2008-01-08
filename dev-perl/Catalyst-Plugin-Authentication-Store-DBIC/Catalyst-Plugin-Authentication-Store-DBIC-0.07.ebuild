# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Authentication and authorization against a DBIx::Class or Class::DBI model"
SRC_URI="mirror://cpan/authors/id/D/DK/DKAMHOLZ/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="dev-perl/module-build
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Authentication-0.06
	>=dev-perl/Set-Object-1.14
	dev-perl/DBI
"
