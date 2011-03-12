# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=YANICK
MODULE_VERSION=0.6.0
inherit perl-module

DESCRIPTION="Patch CPAN modules using Git"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Git-Repository-1.170.0
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
	test? ( dev-perl/Test-Compile )
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
