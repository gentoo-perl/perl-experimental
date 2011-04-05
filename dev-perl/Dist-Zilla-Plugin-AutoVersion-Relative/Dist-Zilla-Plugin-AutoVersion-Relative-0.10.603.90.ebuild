# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01060309
inherit perl-module

DESCRIPTION="Time-Relative versioning"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/DateTime-0.50 $(comment 0.500.0)
	>=dev-perl/Dist-Zilla-2.101.310
	$(comment dz:Role:TextTemplate is dz 1)
	$(comment dz:Role:VersionProvider is 1.91.250)
	>=dev-perl/Moose-1.09 $(comment 1.90.0)
	>=dev-perl/MooseX-StrictConstructor-0.100 $(comment 0.100.0)
	>=dev-perl/MooseX-Types-DateTime-0.05 $(comment 0.50.0)
	dev-perl/MooseX-Types $(comment MooseX::Types::Moose)
	dev-perl/Readonly
	>=dev-perl/namespace-autoclean-0.09 $(comment 0.90.0)
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Dist-Zilla
	>=dev-perl/Dist-Zilla-2.100.860 $(comment GatherDir plugin)
	$(comment ::Tester is 1.100.710)
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
