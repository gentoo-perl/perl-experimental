# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3

MODULE_AUTHOR=YANICK
inherit perl-module

DESCRIPTION="Patch CPAN modules using Git"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-vcs/git[perl]
	virtual/perl-PodParser
	dev-perl/File-chdir
	virtual/perl-File-Path
	dev-perl/File-chmod
	dev-perl/CLASS
	>=virtual/perl-File-Temp-0.22
	>=dev-lang/perl-5.10.0
	>=virtual/perl-CPANPLUS-0.840.0
	dev-perl/autodie
	>=dev-perl/BackPAN-Index-0.390.0

"
DEPEND="
	virtual/perl-Module-Build
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
