# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.005012
inherit perl-module

DESCRIPTION="KENTNL's DZil plugin testing tool"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"

RDEPEND="
	virtual/perl-Carp
	dev-perl/Data-DPath
	dev-perl/Dist-Zilla
	dev-perl/Module-Runtime
	dev-perl/Moo
	>=dev-perl/Path-Tiny-0.50.0
	dev-perl/Sub-Exporter
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.960.0
	dev-perl/Try-Tiny
	dev-perl/recommended
	!minimal? (
		>=dev-perl/Moo-1.0.8
		>=dev-perl/Path-Tiny-0.58.0
		dev-perl/Test-Differences
		>=virtual/perl-Test-Simple-0.990.0
		dev-perl/Test-TempDir-Tiny
	)
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	!minimal? ( >=virtual/perl-ExtUtils-MakeMaker-7.0.0 )
	test? (
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.960.0
		!minimal? (
			>=virtual/perl-CPAN-Meta-2.120.900
			>=virtual/perl-ExtUtils-MakeMaker-7.0.0
			>=virtual/perl-Test-Simple-0.990.0
		)
	)
"
