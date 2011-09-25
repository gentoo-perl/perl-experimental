# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ASH
MODULE_VERSION="1.003012"
inherit perl-module

DESCRIPTION="Perl6 like method signature parser"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/Moose
	>=dev-perl/MooseX-Traits-0.06
	>=dev-perl/MooseX-Types-0.17
	dev-perl/MooseX-Types-Structured
	>=dev-perl/namespace-clean-0.10
	>=dev-perl/PPI-1.203
"
DEPEND="
	${RDEPEND}
	test? (
	  dev-perl/aliased
	  virtual/perl-Test-Simple
	  dev-perl/Test-Exception
	  dev-perl/Test-Differences
	)
"
SRC_TEST="do"
