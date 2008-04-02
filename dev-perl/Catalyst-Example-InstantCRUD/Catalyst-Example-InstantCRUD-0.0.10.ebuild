# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst CRUD example Controller"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/Z/ZB/ZBY/${PN}-v0.0.10.tar.gz"
RESTRICT="nomirror"
LICENSE="|| ( Artistic GPL-2 )"

S="${WORKDIR}/${PN}-v0.0.10"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

DEPEND="
	dev-perl/version
	dev-perl/Catalyst-Runtime
	dev-perl/URI
	dev-perl/HTML-Parser
	dev-perl/HTML-Widget
	>=dev-perl/Catalyst-View-TT-0.21
	dev-perl/Template-Plugin-Class
	dev-perl/Catalyst-Plugin-DefaultEnd
	dev-perl/Catalyst-Model-DBIC-Schema
	dev-perl/DBIx-Class
	dev-perl/DBIx-Class-Schema-Loader
"

