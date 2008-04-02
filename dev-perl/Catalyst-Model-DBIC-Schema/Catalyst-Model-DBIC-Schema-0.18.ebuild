# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="DBIx::Class::Schema Model Class"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/B/BL/BLBLACK/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

IUSE=""
DEPEND="
	dev-perl/module-build
	>=dev-perl/DBIx-Class-0.07000
	dev-perl/Catalyst-Runtime
	>=dev-perl/UNIVERSAL-require-0.10
	>=dev-perl/Class-Data-Accessor-0.02
	>=dev-perl/Class-Accessor-0.22
	>=dev-perl/Catalyst-Devel-1.0
	>=dev-perl/DBIx-Class-Schema-Loader-0.03006
"
