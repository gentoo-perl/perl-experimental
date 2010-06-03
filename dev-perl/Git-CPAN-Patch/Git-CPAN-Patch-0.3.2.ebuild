# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MY_P="${PN}-v${PV}"
S="${WORKDIR}/${MY_P}"

MODULE_AUTHOR=YANICK
inherit perl-module

DESCRIPTION="Patch CPAN modules using Git"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Parse-BACKPAN-Packages-0.36
	virtual/perl-PodParser
	dev-perl/File-chdir
	virtual/perl-File-Path
	dev-perl/File-chmod
	dev-perl/CLASS
	>=virtual/perl-File-Temp-0.22
	>=dev-lang/perl-5.10.0
	>=virtual/perl-CPANPLUS-0.84
	dev-perl/autodie
	>=dev-perl/BackPAN-Index-0.39
"
DEPEND="
	virtual/perl-Module-Build
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
