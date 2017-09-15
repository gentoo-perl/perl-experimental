# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=2.001000
inherit perl-module

DESCRIPTION="Scans Dist::Zilla's .pm files and tries to identify classes using Class::Discover."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"

RDEPEND="
	dev-perl/Class-Discover
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-2.0.0
	dev-perl/Moose
	dev-perl/namespace-autoclean
"
# TODO: !minimal += >=virtual/perl-Test-Simple-1.1.6
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	!minimal? ( >=virtual/perl-ExtUtils-MakeMaker-6.980.0 )
	test? (
		>=dev-perl/Dist-Zilla-Util-Test-KENTNL-1.3.2
		virtual/perl-File-Spec
		dev-perl/Dist-Zilla
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.960.0
		!minimal? (
			>=virtual/perl-CPAN-Meta-2.120.900
		)
	)
"
