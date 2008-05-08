# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst controller for HTML::FormFu framework"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="http://www.cattlegrid.info/files/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

S="${WORKDIR}/Catalyst-Controller-HTML-FormFu-0.02000"

IUSE=""
DEPEND="
        dev-perl/Catalyst-Runtime
        dev-perl/Config-Any
        || ( >=dev-perl/HTML-FormFu-0.02000 dev-perl/HTML-FormFu-svn )
        dev-perl/Task-Weaken
"

