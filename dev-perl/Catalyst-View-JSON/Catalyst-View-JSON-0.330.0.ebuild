# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION="JSON View Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.600.0
	>=dev-perl/JSON-Any-1.15 $(comment 1.150.0)
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	dev-perl/yaml $(comment YAML)
	virtual/perl-Test-Simple $(comment BUILD_REQUIRES Test::More)
"
SRC_TEST=do
