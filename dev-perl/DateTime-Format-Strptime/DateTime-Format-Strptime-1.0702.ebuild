# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Parse and format strp and strf time patterns"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/R/RI/RICKM/${P}.tgz"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	>=dev-perl/DateTime-0.12
	>=dev-perl/DateTime-Locale-0.02
	>=dev-perl/DateTime-TimeZone-0.25
	>=dev-perl/DateTime-TimeZone-0.25
	>=dev-perl/Params-Validate-0.64
"
