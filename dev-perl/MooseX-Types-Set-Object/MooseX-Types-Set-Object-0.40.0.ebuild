# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Set::Object type with coercions and stuff."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# MoooseX::Types::Moose -> MooseX-Types
RDEPEND="
	>=dev-perl/Moose-0.500.0
	dev-perl/MooseX-Types
	dev-perl/Set-Object
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.30.0
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
