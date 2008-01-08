# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Generate image tags for static files."
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

DEPEND="
	dev-perl/module-build
	>=dev-lang/perl-5.8.1
	dev-perl/Catalyst-Runtime
	dev-perl/ImageSize
	dev-perl/Path-Class
	dev-perl/HTML-Parser
"

src_compile() {
	export PERL_EXTUTILS_AUTOINSTALL="--skipdeps"
	perl-module_src_compile
}
