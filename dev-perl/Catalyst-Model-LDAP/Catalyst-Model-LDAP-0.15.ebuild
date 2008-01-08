# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Helper for LDAP models."
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/D/DA/DANIELTWC/${P}.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Class-Accessor
	dev-perl/Class-C3
	dev-perl/perl-ldap
"
