# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Authentication and authorization against a DBIx::Class or Class::DBI model"
SRC_URI="mirror://cpan/authors/id/M/MR/MRAMBERG/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Authentication-0.06
	>=dev-perl/Set-Object-1.14
	dev-perl/Class-Accessor
	dev-perl/DBIx-Class
	dev-perl/Catalyst-Model-DBIC-Schema
	>=dev-perl/Catalyst-Plugin-Authorization-Roles-0.03
	>=dev-perl/Catalyst-Plugin-Session-State-Cookie-0.02
"

pkg_setup() {
		echo
		eerror "This ebuild is DEPRECATED!!!!!"
		eerror
		eerror "Use Catalyst-Authentication-Store-DBIx-Class instead"
}
