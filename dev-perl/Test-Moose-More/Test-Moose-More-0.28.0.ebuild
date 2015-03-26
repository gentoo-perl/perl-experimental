# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RSRCHBOY
MODULE_VERSION=0.028
inherit perl-module

DESCRIPTION='More tools for testing Moose packages'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Util -> Moose
# Moose::Util::TypeConstraints -> Moose
# Test::Builder -> Test-Simple
# Test::Moose -> Moose
# Test::More -> Test-Simple
# IO::Handle -> IO
# IPC::Open3 -> perl
# Moose::Role -> Moose
# Test::Builder::Tester -> Test-Simple
RDEPEND="
	dev-perl/Data-OptList
	dev-perl/Moose
	virtual/perl-Scalar-List-Utils
	dev-perl/Sub-Exporter
	dev-perl/Syntax-Keyword-Junction
	>=virtual/perl-Test-Simple-0.940.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		dev-perl/Perl-Version
		>=dev-perl/TAP-SimpleOutput-0.2.0
		>=dev-perl/Test-CheckDeps-0.10.0
		dev-perl/aliased
		virtual/perl-constant
		dev-perl/namespace-autoclean
	)
"
