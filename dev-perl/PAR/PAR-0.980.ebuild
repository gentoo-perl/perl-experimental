# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Perl Archive Toolkit"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/S/SM/SMUELLER/${P}.tar.gz"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

DEPEND="
	>=dev-perl/Compress-Zlib-1.30
	>=dev-perl/Archive-Zip-1.00
	>=dev-perl/PAR-Dist-0.22
	dev-perl/Digest-SHA1
	dev-perl/Module-Signature
"

