# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ANDYA
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Recursive descent XML parsing"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PERL_RM_FILES=(
	t/pod.t
	t/pod-coverage.t
)
# Test::More -> Test-Simple
RDEPEND="
	virtual/perl-Test-Simple
	dev-perl/XML-TokeParser
	dev-perl/Test-Differences
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
"
