# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MSTROUT
MODULE_VERSION="0.17"
inherit perl-module

DESCRIPTION="Catalyst plugin: maintain session IDs using cookies"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.50
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		dev-perl/Moose
		virtual/perl-Test-Simple
	)
"
