# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Create a Fake ShareDir for your modules for testing."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ''; }

COMMON_DEPEND="
	$(comment requires)
	$(comment Carp core)
	dev-perl/File-Copy-Recursive
	>=dev-perl/File-ShareDir-1
	virtual/perl-File-Temp $(comment File::Temp)
	dev-perl/Path-Class
"
DEPEND="
	${COMMON_DEPEND}
	$(comment build_requires)
	$(comment English core)
	$(comment File-Find core)
	$(comment FindBin core)
	>=virtual/perl-Module-Build-0.360.100 $(comment Module::Build)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
