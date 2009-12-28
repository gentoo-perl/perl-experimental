# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=YANICK
inherit perl-module

DESCRIPTION="Patch CPAN modules using Git"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
TODO_DEPEND="
	>=virtual/perl-CPANPLUS-0.84
"
COMMON_DEPEND="
	virtual/perl-Module-Build
	>=dev-perl/Parse-BACKPAN-Packages-0.36
	virtual/perl-PodParser
	dev-perl/File-chdir
	virtual/perl-File-Path
	dev-perl/File-chmod
	dev-perl/CLASS
	>=virtual/perl-File-Temp-0.22
"
COMMON_DEPEND="${COMMON_DEPEND} ${TODO_DEPEND}"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
