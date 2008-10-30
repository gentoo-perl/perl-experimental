# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Standalone, extensible Perl module installer"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=virtual/perl-Module-CoreList-2.15
	>=virtual/perl-ExtUtils-Install-1.50
	>=dev-perl/extutils-parsexs-2.19
	>=dev-perl/YAML-Tiny-1.30
	>=dev-perl/Module-ScanDeps-0.83
	>=dev-perl/PAR-Dist-0.29
	>=dev-perl/Archive-Tar-1.38
	>=dev-perl/module-build-0.28.08
"
	#>=virtual/perl-ExtUtils-ParseXS-2.19

