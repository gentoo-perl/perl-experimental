# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst Development Tools"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/M/MR/MRAMBERG/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

DEPEND="
	>=dev-perl/Module-Install-0.64
	>=dev-perl/Path-Class-0.09
	>=dev-perl/Template-Toolkit-2.14
	>=dev-perl/Catalyst-Runtime-5.7000
	>=dev-perl/Catalyst-Manual-5.7000
	>=dev-perl/Catalyst-Action-RenderView-0.04
	>=dev-perl/Catalyst-Plugin-Static-Simple-0.14
	dev-perl/Catalyst-Plugin-ConfigLoader
	>=dev-perl/yaml-0.55
	dev-perl/File-Copy-Recursive
"

