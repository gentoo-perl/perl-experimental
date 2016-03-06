# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="Automatic Trait Loading and Resolution for Catalyst Components"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Role -> Moose
# Scalar::Util -> Scalar-List-Utils
# IO::Handle -> IO
# IPC::Open3 -> perl
# Test::More -> Test-Simple
RDEPEND="
	virtual/perl-Carp
	dev-perl/Catalyst-Runtime
	dev-perl/Class-Load
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/MooseX-Traits-Pluggable
	virtual/perl-Scalar-List-Utils
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		>=dev-perl/MooseX-MethodAttributes-0.150.0
		virtual/perl-Test-Simple
		virtual/perl-version
	)
"
PERL_RM_FILES=(
	t/release-pod-syntax.t
)
