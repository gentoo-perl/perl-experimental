# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Per user sessions (instead of per browser sessions)."
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/D/DK/DKAMHOLZ/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.01
	>=dev-perl/Catalyst-Plugin-Authentication-0.01
	dev-perl/Hash-Merge
	dev-perl/Object-Signature
"
