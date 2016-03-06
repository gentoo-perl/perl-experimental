# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="Generalized Inverted Indexing"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Data::Stream::Bulk::Util -> Data-Stream-Bulk
# Moose::Role -> Moose
# Scalar::Util -> Scalar-List-Utils
# Test::Deep::NoTest -> Test-Deep
RDEPEND="
	virtual/perl-Carp
	dev-perl/Data-Stream-Bulk
	dev-perl/MRO-Compat
	>=dev-perl/Moose-0.890.0
	virtual/perl-Scalar-List-Utils
	dev-perl/Scope-Guard
	dev-perl/Set-Object
	dev-perl/Test-Deep
	virtual/perl-constant
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/MooseX-Types-Set-Object
		virtual/perl-Test-Simple
		dev-perl/Test-TempDir-Tiny
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
