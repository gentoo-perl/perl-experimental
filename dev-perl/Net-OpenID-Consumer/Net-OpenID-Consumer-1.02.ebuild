# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Library for consumers of OpenID identities"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/M/MA/MART/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

IUSE=""
DEPEND="
	dev-perl/libwww-perl
	dev-perl/Digest-SHA1
	dev-perl/URI
	dev-perl/XML-Simple
	dev-perl/Crypt-DH
"

