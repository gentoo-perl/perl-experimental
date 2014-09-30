# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ETHER
MODULE_VERSION=0.65
inherit perl-module

DESCRIPTION="A Moose role for processing command line options"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Role, Moose::Meta::Attribute, Moose::Util::TypeConstraints -> Moose
# Scalar::Util -> perl-Scalar-List-Utils
RDEPEND="
	virtual/perl-Carp
	>=virtual/perl-Getopt-Long-2.370.0
	>=dev-perl/Getopt-Long-Descriptive-0.88.0
	>=dev-perl/Moose-0.560.0
	dev-perl/MooseX-Role-Parameterized
	virtual/perl-Scalar-List-Utils
	dev-perl/Try-Tiny
	dev-perl/namespace-autoclean
"
# Moose::Meta::Class, Moose::Util, Test::Moose -> Moose
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.37.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/Module-Runtime
		>=dev-perl/Path-Tiny-0.9.0
		dev-perl/Test-Deep
		>=dev-perl/Test-Fatal-0.3.0
		>=virtual/perl-Test-Simple-0.620.0
		>=dev-perl/Test-Requires-0.50.0
		dev-perl/Test-Trap
		>=dev-perl/Test-Warnings-0.9.0
		virtual/perl-if
	)
"

SRC_TEST="do parallel"
mytargets="install"
