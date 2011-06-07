# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Types for emulating Hash-like behaviours with ArrayRefs."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Moose-0.260.0 $(comment ::Parameterized)
	>=dev-perl/Moose-0.340.0 $(comment ::Parameterizable)
	dev-perl/Moose $(comment Util::TypeConstraints)
	dev-perl/MooseX-Types
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More 0.96)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
