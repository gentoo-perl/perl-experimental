# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
MODULE_VERSION="0.101480"
inherit perl-module

DESCRIPTION="a tool to scan your Perl code for its prerequisites"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-File-Spec
	virtual/perl-Scalar-List-Utils
	dev-perl/Moose
	>=dev-perl/PPI-1.205
	dev-perl/Params-Util
	>=dev-perl/String-RewritePrefix-0.5.0
	>=virtual/perl-Version-Requirements-0.100.630
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	virtual/perl-File-Temp
	dev-perl/PPI
	virtual/perl-Test-Simple
	dev-perl/Try-Tiny
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
