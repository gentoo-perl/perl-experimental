# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION="(DEPRECATED) Apply roles to action instances"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.250
	dev-perl/Class-Load
	dev-perl/Moose
	dev-perl/MooseX-Types
	virtual/perl-Scalar-List-Utils
	>=dev-perl/String-RewritePrefix-0.4.0
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		>=dev-perl/Catalyst-Action-REST-0.740.0
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
		dev-perl/namespace-clean
		virtual/perl-parent
	)
"
