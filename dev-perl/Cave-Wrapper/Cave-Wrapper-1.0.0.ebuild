# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000000
inherit perl-module

DESCRIPTION="A Wrapper to the Paludis 'cave' Client."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"

BIN_REQS="sys-apps/paludis"
RDEPEND="${BIN_REQS}
	virtual/perl-Carp
	dev-perl/Moo
	dev-perl/Sub-Install
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	!minimal? ( >=virtual/perl-ExtUtils-MakeMaker-7.0.0 )
	dev-perl/Devel-CheckBin
	test? (
		!minimal? (
			>=virtual/perl-CPAN-Meta-2.120.900
			>=virtual/perl-Test-Simple-0.990.0
		)
		virtual/perl-File-Spec
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.890.0
	)
"
SRC_TEST="do parallel"
