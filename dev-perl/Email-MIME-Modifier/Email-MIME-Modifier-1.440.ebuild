# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Modify Email::MIME Objects Easily"
SRC_URI="mirror://cpan/authors/id/R/RJ/RJBS/${P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://searc.cpan.org/dist/${PN}/"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	>=dev-perl/Email-MIME-1.82
	>=dev-perl/Email-MIME-ContentType-1.0
	>=dev-perl/Email-MIME-Encodings-1.3
	>=dev-perl/Email-MessageID-1.2
	>=dev-perl/Email-Simple-1.92
"
