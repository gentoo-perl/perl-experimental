# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=ASH
MODULE_VERSION=1.000003
inherit perl-module

DESCRIPTION="detect MooseX::Declare's 'class' keyword in files."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/File-Find-Rule-Perl-1.70.0
	dev-perl/File-Find-Rule
	dev-perl/PPI
	dev-perl/Path-Class
	virtual/perl-File-Temp
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Test-Differences
		virtual/perl-Test-Simple
	)
"
