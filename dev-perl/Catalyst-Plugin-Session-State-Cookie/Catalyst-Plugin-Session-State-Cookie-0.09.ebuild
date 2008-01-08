# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst plugin: maintain session IDs using cookies"
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Runtime-5.7010
	>=dev-perl/Catalyst-Plugin-Session-0.09
	>=dev-perl/Test-MockObject-1.01
"
