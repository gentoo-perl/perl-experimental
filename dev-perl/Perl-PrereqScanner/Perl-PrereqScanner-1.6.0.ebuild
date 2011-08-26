# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.006
inherit perl-module

DESCRIPTION="a tool to scan your Perl code for its prerequisites"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	virtual/perl-File-Spec $(comment File::Spec::Functions)
	$(comment virtual/perl-FindBin)
	dev-perl/List-MoreUtils
	virtual/perl-Scalar-List-Utils $(comment List::Util)
	dev-perl/Moose
	$(comment Moose::Role is Moose)
	>=dev-perl/PPI-1.205.0
	dev-perl/Params-Util
	>=dev-perl/String-RewritePrefix-0.005 $(comment 0.5.0)
	>=virtual/perl-Version-Requirements-0.100.630
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56

	$(comment BUILD REQUIRES)
	virtual/perl-File-Temp
	dev-perl/PPI $(comment PPI::Document)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
	dev-perl/Try-Tiny
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
