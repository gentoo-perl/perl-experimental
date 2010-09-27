# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="detect MooseX::Declare's 'class' keyword in files."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/File-Find-Rule-Perl-1.07
	dev-perl/File-Find-Rule
	dev-perl/PPI
	dev-perl/Path-Class
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-File-Temp
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Differences
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
