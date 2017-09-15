# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RJP
MODULE_VERSION=0.8
inherit perl-module

DESCRIPTION="Simpler interface to URI::Find"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/URI-Find
	dev-perl/URI
	dev-perl/Text-Glob"
DEPEND="
	dev-perl/Module-Build
	${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
