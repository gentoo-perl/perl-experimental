# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DOMM
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION='Find out what modules are used'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Parse-RecDescent-1.967.9
	dev-perl/Pod-Strip
	virtual/perl-version
"
DEPEND="
	>=dev-perl/Module-Build-0.360.100
	test? (
		dev-perl/Test-Deep
		virtual/perl-Test-Simple
		dev-perl/Test-NoWarnings
	)
"
