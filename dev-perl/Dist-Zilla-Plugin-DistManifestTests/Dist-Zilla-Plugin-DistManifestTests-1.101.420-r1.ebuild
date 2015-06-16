# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=MARCEL
MODULE_VERSION=1.101420
inherit perl-module

DESCRIPTION="Release tests for the manifest"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	dev-perl/Test-DistManifest
	dev-perl/Dist-Zilla
	dev-perl/Moose
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	${COMMON_DEPEND}
	virtual/perl-Scalar-List-Utils
	virtual/perl-File-Temp
	test? (
		>=virtual/perl-Test-Simple-0.94
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
