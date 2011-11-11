# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.007
inherit perl-module

DESCRIPTION="a tool to scan your Perl code for its prerequisites"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment File::Spec::Functions)
	virtual/perl-File-Spec

	$(comment FindBin)

	$(comment Getopt::Long)

	$(comment List::MoreUtils)
	dev-perl/List-MoreUtils

	$(comment List::Util)
	virtual/perl-Scalar-List-Utils

	$(comment Moose)
	$(comment Moose::Role)
	dev-perl/Moose

	$(comment PPI 1.205)
	>=dev-perl/PPI-1.205.0

	$(comment Params::Util)
	dev-perl/Params-Util

	$(comment String::RewritePrefix 0.005)
	>=dev-perl/String-RewritePrefix-0.5.0

	$(comment Version::Requirements 0.100630)
	>=virtual/perl-Version-Requirements-0.100.630

	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean

	$(comment strict)

	$(comment warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment ExtUtils::MakeMaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56

	$(comment BUILD REQUIRES)
	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment PPI::Document)
	dev-perl/PPI

	$(comment Test::More 0.96)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)

	$(comment Try::Tiny)
	dev-perl/Try-Tiny
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
