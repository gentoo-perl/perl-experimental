# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Time-Relative versioning"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/DateTime-0.50
	>=dev-perl/Dist-Zilla-2.10131
	>=dev-perl/Moose-0.89
	>=dev-perl/MooseX-Has-Sugar-0.0404
	>=dev-perl/MooseX-StrictConstructor-0.08
	>=dev-perl/MooseX-Types-DateTime-0.05
	dev-perl/MooseX-Types
	>=dev-perl/namespace-autoclean-0.08
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	>=virtual/perl-Module-Build-0.36.01
	dev-perl/Test-Kwalitee
	dev-perl/Test-Perl-Critic
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
