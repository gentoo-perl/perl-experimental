# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Authen::Htpasswd based user storage/authentication."
SRC_URI="mirror://cpan/authors/id/B/BO/BOBTFISH/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
RESTRICT="nomirror"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

DEPEND="
	>=dev-perl/Catalyst-Plugin-Authentication-0.10006
	>=dev-perl/Authen-Htpasswd-0.13
	dev-perl/Class-Accessor
	dev-perl/Crypt-PasswdMD5
"
