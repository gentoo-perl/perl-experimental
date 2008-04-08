# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="OpenID Authentication"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/B/BT/BTROTT/${P}.tar.gz"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc
x86 x86-fbsd"

DEPEND="
	dev-perl/LWPx-ParanoidAgent
	dev-perl/Net-OpenID-Consumer
	dev-perl/Catalyst-Runtime
"

