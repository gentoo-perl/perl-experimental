# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=NEILB
MODULE_VERSION="1.11"
inherit perl-module

DESCRIPTION="Force number of words to singular or plural"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"

RDEPEND="
	virtual/perl-Exporter
	dev-perl/Lingua-EN-Inflect
"
DEPEND="
	$RDEPEND
	>=virtual/perl-ExtUtils-MakeMaker-6.30
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST=do
