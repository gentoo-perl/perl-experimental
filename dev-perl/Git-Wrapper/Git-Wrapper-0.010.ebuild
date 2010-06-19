# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=PERIGRIN
inherit perl-module

DESCRIPTION="wrap git(7) command-line interface"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PATCHES=(
	"$FILESDIR/rt58519.patch"
)
COMMON_DEPEND="
	dev-perl/File-pushd
	dev-vcs/git
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
