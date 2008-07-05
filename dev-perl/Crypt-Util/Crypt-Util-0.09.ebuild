# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="A lightweight Crypt/Digest convenience API"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

IUSE=""
DEPEND="
	>=dev-perl/Mouse-0.04
	dev-perl/Sub-Exporter
	dev-perl/Data-GUID
	dev-perl/namespace-clean
	dev-perl/crypt-cbc
	dev-perl/Crypt-Rijndael
	dev-perl/Digest-SHA
"

pkg_setup() {
	ewarn "This ebuild installs by default CBC, Rijndael and SHA."
	ewarn "If you need other crypt libs, install them!"
}

