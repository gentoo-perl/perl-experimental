# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Standalone, extensible Perl module installer"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-lang/perl
	>=virtual/perl-Archive-Tar-1.44
	>=virtual/perl-Devel-PPPort-3.16
	>=virtual/perl-ExtUtils-Install-1.52
	>=virtual/perl-ExtUtils-ParseXS-2.19
	>=dev-perl/File-Remove-1.42
	>=virtual/perl-Module-Build-0.28.08
	>=virtual/perl-Module-CoreList-2.17
	>=dev-perl/Module-ScanDeps-0.89
	>=dev-perl/PAR-Dist-0.29
	>=dev-perl/YAML-Tiny-1.36
"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Harness-3.13
		>=virtual/perl-Test-Simple-0.86 )"

SRC_TEST=do
