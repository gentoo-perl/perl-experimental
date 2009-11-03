# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Convert MultiMarkdown syntax to (X)HTML"

LICENSE="|| ( Artistic GPL-2 )" # to be fixed
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Text-Markdown-1.0.26
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42
		dev-perl/Test-Exception
		dev-perl/Text-Diff
		dev-perl/List-MoreUtils
		>=dev-perl/File-Slurp-9999.08
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
