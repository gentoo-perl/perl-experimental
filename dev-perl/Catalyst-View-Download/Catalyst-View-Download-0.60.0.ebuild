# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=GAUDEON
MODULE_VERSION="0.06"
inherit perl-module

DESCRIPTION="Takes a nested array and outputs CSV formatted content."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Text-CSV
	dev-perl/XML-Simple
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-use-ok
		dev-perl/Test-WWW-Mechanize
	)

"
SRC_TEST="do"
