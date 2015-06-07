# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="URI related types and coercions for Moose"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Util::TypeConstraints -> Moose
# MooseX::Types::Moose -> MooseX-Types
# URI::QueryParam -> URI
# URI::WithBase -> URI
# URI::file -> URI
# URI::data -> URI
# File:Spec::Functions -> File-Spec
RDEPEND="
	dev-perl/Moose
	>=dev-perl/MooseX-Types-0.400.0
	dev-perl/MooseX-Types-Path-Class
	virtual/perl-Scalar-List-Utils
	dev-perl/URI
	dev-perl/URI-FromHash
	virtual/perl-if
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.36.0
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
		virtual/perl-version
	)
"
