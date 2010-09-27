# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Sugar Syntax for moose 'has' fields"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# I make this module upstream =).
# But sadly, MB doesn't natively support test-requires
# so this is the best way to support test-requires until 
# it supports it when it adds it ( soon ! )

PERL_REQUIRES="
	dev-perl/Sub-Exporter
"
PERL_CONFIGURE_REQUIRES="
	>=virtual/perl-Module-Build-0.36.01
"
PERL_BUILD_REQUIRES="
	>=virtual/perl-Module-Build-0.36.01
"
PERL_TEST_REQUIRES="
	>=virtual/perl-Test-Simple-0.88
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/Test-Exception
	dev-perl/namespace-autoclean
	virtual/perl-File-Temp
"

DEPEND="${PERL_REQUIRES}"
DEPEND="${DEPEND} ${PERL_BUILD_REQUIRES} ${PERL_TEST_REQUIRES}"
#DEPEND="${DEPEND} ${PERL_BUILD_REQUIRES} test? ( ${PERL_TEST_REQUIRES} )"

RDEPEND="
	${PERL_REQUIRES}
"
SRC_TEST="do"
