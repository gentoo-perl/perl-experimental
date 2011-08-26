# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.002
inherit perl-module

DESCRIPTION="prevent a release if you have prereqs not found on CPAN"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ""; }

COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4 $(comment Dist::Zila::Role::BeforeRelease)
	dev-perl/libwww-perl
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIGURE_REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	$(comment BUILD_REQUIRES)
	>=dev-perl/Dist-Zilla-4.200.2   $(comment Test::Dzil)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
