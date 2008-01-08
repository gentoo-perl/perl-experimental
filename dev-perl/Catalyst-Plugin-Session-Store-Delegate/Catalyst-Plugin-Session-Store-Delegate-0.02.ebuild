# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Delegate session storage to an application model object."
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://search.cpan.org/dist/${P}/"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.12
	dev-perl/Class-Accessor
	dev-perl/Test-use-ok
"
