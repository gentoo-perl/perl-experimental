# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DCONWAY
MODULE_VERSION=1.039
inherit perl-module

DESCRIPTION='Add grammatical parsing features to Perl 5.10 regexes'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-version
	>=dev-lang/perl-5.18.0
	>=dev-perl/Lexical-Var-0.7.0
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
