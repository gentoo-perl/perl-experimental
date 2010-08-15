# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=SILASMONK
inherit perl-module

#
DESCRIPTION="A two-phase Test library. One: Generate outputs. Two: Compare them"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-Test-Simple
	dev-perl/Test-Differences
	dev-perl/Text-Diff
	dev-perl/Algorithm-Diff
"
DEPEND="
	>=virtual/perl-Module-Build-0.35
	dev-perl/Test-MockObject
	virtual/perl-File-Spec
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
