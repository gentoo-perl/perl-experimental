# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CE/CEESHEK/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	>=dev-perl/CGI-Application-4
	dev-perl/Digest-SHA1
	dev-perl/UNIVERSAL-require
	dev-perl/Test-Warn
	dev-perl/Test-Exception
"
