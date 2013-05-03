# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION="0.01060815"
inherit perl-module

DESCRIPTION="Delegate Extraction based on class"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Moose-0.900.0
	$(comment Moose::Role)
	dev-perl/MooseX-Types
	$(comment MooseX::Types::Moose)
	dev-perl/Search-GIN
	$(comment Search::GIN::Extract)
	$(comment Search::GIN::Extract::Attributes)
	$(comment Search::GIN::Extract::Callback)
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-FInd)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
