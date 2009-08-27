# Copyright 1999-2009 Gentoo Foundation
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
	dev-perl/File-Find-Rule
	>=dev-perl/File-Find-Rule-Perl-1.07
	dev-perl/PPI
	virtual/perl-File-Temp
	dev-perl/Path-Class
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Differences
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
