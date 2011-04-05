# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=GFUJI
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="A lightweight field hash implementation"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=virtual/perl-parent-0.221 $(comment 0.221.0)
	|| (
		>=dev-lang/perl-5.010
		>=dev-perl/MRO-Compat-0.10 $(comment 0.100.0)
	)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIGURE REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
	>=virtual/perl-Devel-PPPort-3.190.0
	test? (
		>=virtual/perl-Test-Simple-0.62 $(comment 0.620.0)
		>=dev-perl/Test-LeakTrace-0.70.0
	)
	$(comment BUILD REQUIRES)
	>=virtual/perl-ExtUtils-ParseXS-2.21.0 $(comment 2.210.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
