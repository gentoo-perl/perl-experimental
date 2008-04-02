# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Saves session IDs by rewriting URIs delivered to the client, and extracting the session ID from requested URIs"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.06
	dev-perl/HTML-TokeParser-Simple
	>=dev-perl/Test-MockObject-1.01
	dev-perl/MIME-Types
	dev-perl/URI
"
