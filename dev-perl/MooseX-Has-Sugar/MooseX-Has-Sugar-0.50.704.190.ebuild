# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION="0.05070419"
inherit perl-module

DESCRIPTION="Sugar Syntax for moose 'has' fields"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
# I make this module upstream =).
# But sadly, MB doesn't natively support test-requires
# so this is the best way to support test-requires until 
# it supports it when it adds it ( soon ! )

PERL_REQUIRES="
	$(comment virtual/perl-Carp)
	dev-perl/Sub-Exporter
"
PERL_CONFIGURE_REQUIRES="
>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
"
PERL_BUILD_REQUIRES="
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Moose
	dev-perl/MooseX-Types $(comment MooseX::Types::Moose)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	dev-perl/namespace-autoclean

"
PERL_TEST_REQUIRES=""

DEPEND="${PERL_REQUIRES}"
DEPEND="${DEPEND} ${PERL_BUILD_REQUIRES} ${PERL_TEST_REQUIRES}"
#DEPEND="${DEPEND} ${PERL_BUILD_REQUIRES} test? ( ${PERL_TEST_REQUIRES} )"

RDEPEND="
	${PERL_REQUIRES}
"
SRC_TEST="do"
