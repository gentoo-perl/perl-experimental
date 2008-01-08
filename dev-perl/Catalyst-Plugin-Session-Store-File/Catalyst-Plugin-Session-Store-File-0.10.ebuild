# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="File storage backend for session data"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/E/ES/ESSKAR/${P}.readme"
SRC_URI="mirror://cpan/authors/id/E/ES/ESSKAR/${P}.tar.gz"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	>=dev-perl/Class-Data-Inheritable-0.04
	>=dev-perl/Class-Accessor-0.22
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Session-0.01
	>=dev-perl/Cache-Cache-1.02
"
