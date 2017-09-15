# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.013
inherit perl-module

DESCRIPTION='ClassName type constraint with coercion to load the class.'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Util::TypeConstraints -> Moose
# MooseX::Types::Moose -> MooseX-Types
RDEPEND="
	dev-perl/Module-Runtime
	dev-perl/Moose
	dev-perl/MooseX-Types
	virtual/perl-if
	dev-perl/namespace-autoclean
"
DEPEND="$RDEPEND
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		dev-perl/Class-Load
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/namespace-clean
	)
"
