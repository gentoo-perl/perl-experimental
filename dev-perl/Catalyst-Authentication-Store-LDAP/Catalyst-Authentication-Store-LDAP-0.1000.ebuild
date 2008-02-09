# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Authentication from an LDAP Directory."
SRC_URI="mirror://cpan/authors/id/K/KA/KARMAN/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	dev-perl/perl-ldap
	>=dev-perl/Catalyst-Plugin-Authentication-1.0003
"
