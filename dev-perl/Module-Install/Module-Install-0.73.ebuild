# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Standalone, extensible Perl module installer"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/A/AD/ADAMK/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	>=dev-perl/YAML-Tiny-1.30
	>=dev-perl/Module-ScanDeps-0.83
	>=dev-perl/Module-CoreList-2.15
	>=dev-perl/PAR-Dist-0.29
	>=dev-perl/Archive-Tar-1.38
	>=dev-perl/extutils-parsexs-2.19
	>=dev-perl/module-build-0.28.08
"

