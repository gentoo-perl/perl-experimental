# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Infrastructure plugin for the Catalyst authentication framework"
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/N/NU/NUFFIN/${P}.readme"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="
	dev-perl/Catalyst-Runtime
	>=dev-perl/Catalyst-Plugin-Authentication-0.03
	>=dev-perl/Set-Object-1.14
	dev-perl/Test-Exception
	>=dev-perl/Test-MockObject-1.01
	>=dev-perl/UNIVERSAL-isa-0.05
"
