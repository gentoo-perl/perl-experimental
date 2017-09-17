# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000001
inherit perl-module

DESCRIPTION="Some basic String parsing Rules for Regexp::Grammars"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"
RDEPEND="
	dev-perl/Regexp-Grammars
	>=dev-lang/perl-5.10.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	!minimal? ( >=virtual/perl-ExtUtils-MakeMaker-6.980.0 )
	test? (
		!minimal? (
			>=virtual/perl-CPAN-Meta-2.120.900
		)
		virtual/perl-Data-Dumper
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.960.0
	)
"
