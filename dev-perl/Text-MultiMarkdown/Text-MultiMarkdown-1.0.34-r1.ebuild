# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="1.000034"
inherit perl-module

DESCRIPTION="Convert MultiMarkdown syntax to (X)HTML"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo '';}
COMMON_DEPEND="
	virtual/perl-Digest-MD5
	>=dev-perl/Text-Markdown-1.0.26
	virtual/perl-Encode
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42 $(comment Test::More 0.420.0)
		dev-perl/Test-Exception
		dev-perl/List-MoreUtils
		$(comment virtual/perl-FindBin)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
