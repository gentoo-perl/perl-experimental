# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Generate world unique message-ids"
SRC_URI="mirror://cpan/authors/id/R/RJ/RJBS/${P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://search.cpan.org/${PN}/"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="dev-perl/Email-Address"

