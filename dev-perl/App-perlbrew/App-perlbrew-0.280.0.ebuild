# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.28
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true; }
COMMON_DEPEND="
	dev-perl/File-Path-Tiny
	>=dev-perl/Devel-PatchPerl-0.260.0
	>=virtual/perl-File-Spec-3.26 $(comment Cwd 3.260.0)
"
DEPEND="
	test? (
		virtual/perl-Test-Simple
		$(comment Test::More)
		dev-perl/Test-Output
		dev-perl/Test-Exception
		dev-perl/Test-Spec
		dev-perl/Path-Class
		dev-perl/IO-All
		virtual/perl-File-Temp
	)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
