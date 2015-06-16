# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ESH
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION="32-bit block cipher based on Skipjack"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +recommended"
comment() { true;}
RDEPEND="
	$(comment perl 5.8.0)
	recommended? (
		$(comment Crypt::Skip32::XS)
		dev-perl/Crypt-Skip32-XS
		$(comment Crypt::CBC 2.22)
		>=dev-perl/crypt-cbc-2.22
	)
"
DEPEND="
	$(comment --configure)
	dev-perl/Module-Build
	$(comment --build)
	test? (
		$(comment Test::More 0.62)
		>=virtual/perl-Test-Simple-0.62
		$(comment Test::NoWarnings 0.084)
		>=dev-perl/Test-NoWarnings-0.084
		recommended? (
			$(comment Test::Distribution)
			dev-perl/Test-Distribution
		)

	)
	${RDEPEND}
"
