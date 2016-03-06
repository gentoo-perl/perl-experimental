# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=BROQ
MODULE_VERSION=0.000003
inherit perl-module

DESCRIPTION="An interface to git influenced by Gitalist"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="test" # https://rt.cpan.org/Ticket/Display.html?id=103277
# Scalar::Util -> Scalar-List-Utils
# MooseX::Types::Common::String ::> MooseX::Types::Common
# MooseX::Types::Moose -> MooseX-Types
RDEPEND="
	dev-perl/DateTime
	dev-perl/File-Which
	>=dev-perl/Git-PurePerl-0.500.0
	dev-perl/IPC-Run
	dev-perl/List-MoreUtils
	dev-perl/Method-Signatures
	dev-perl/Moose
	dev-perl/MooseX-Storage
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	dev-perl/MooseX-Types-DateTime
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Path-Class
	virtual/perl-Scalar-List-Utils
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
