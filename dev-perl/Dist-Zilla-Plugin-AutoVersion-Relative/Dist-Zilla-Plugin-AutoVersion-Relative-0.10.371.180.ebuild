# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01037118
inherit perl-module

DESCRIPTION="Time-Relative versioning"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/DateTime-0.50
	>=dev-perl/Dist-Zilla-2.101.310
	>=dev-perl/Moose-1.09
	>=dev-perl/MooseX-StrictConstructor-0.10
	>=dev-perl/MooseX-Types-DateTime-0.05
	dev-perl/MooseX-Types
	>=dev-perl/namespace-autoclean-0.09
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.88
	>=virtual/perl-Module-Build-0.36.01
	virtual/perl-File-Temp
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
