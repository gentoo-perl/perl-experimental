# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=BLBLACK
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Catalyst Plugin to subvert NEXT to use Class::C3"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
	t/04kwalitee.t
)
RDEPEND=">=dev-perl/Catalyst-Runtime-5.700.600
	>=dev-perl/Class-C3-0.190.0
	>=virtual/perl-NEXT-0.600.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( >=virtual/perl-Test-Simple-0.470.0 )
"
