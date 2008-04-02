# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst plugin: generic session plugin - ties together server side storage and client side state required to maintain session data"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Object-Signature
	dev-perl/Test-Deep
	dev-perl/Test-Exception
	>=dev-perl/Test-MockObject-1.01
"
