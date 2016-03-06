# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION='Structured Type Constraints for Moose'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Meta::TypeCoercion -> Moose
# Moose::Meta::TypeConstraint -> Moose
# Moose::Meta::TypeConstraint::Parameterizable -> Moose
# Moose::Util::TypeConstraints -> Moose
# Scalar::Util -> Scalar-List-Utils
# MooseX::Types::Moose -> MooseX-Types
# Test::More -> Test-Simple
RDEPEND="
	>=dev-perl/Devel-PartialDump-0.130.0
	>=dev-perl/Moose-1.60.0
	>=dev-perl/MooseX-Types-0.220.0
	virtual/perl-Scalar-List-Utils
	>=dev-perl/Sub-Exporter-0.982.0
	virtual/perl-if
	>=dev-perl/namespace-clean-0.80.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		virtual/perl-Data-Dumper
		dev-perl/DateTime
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/MooseX-Types-DateTime
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Requires
	)
"
