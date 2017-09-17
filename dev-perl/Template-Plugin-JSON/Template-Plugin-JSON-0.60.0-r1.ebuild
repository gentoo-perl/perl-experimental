# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Encodes text to be safe in JavaScript"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"

RDEPEND="dev-perl/Moose
	>=dev-perl/Template-Toolkit-2.200.0
	>=dev-perl/JSON-2.120.0
	!minimal? ( dev-perl/JSON-XS )"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Test-Simple
		>=virtual/perl-Test-Simple-1.1.10
	)"
