# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="checks intelligently if files have changed"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CO/CORION/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""

pkg_setup() {
	perl -MDigest -e1 || ewarn "File::Modified likes to have Digest, but doesn't require it."
	perl -MDigest::MD5 -e1 || ewarn "File::Modified likes to have Digest, but doesn't require it."
}
