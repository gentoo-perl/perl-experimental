# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KENTNL
MODULE_VERSION="1.12044911"
inherit perl-module

DESCRIPTION="Scans Dist::Zilla's .pm files and tries to identify classes using Class::Discover"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+metanoindex"
COMMON_DEPEND="
	dev-perl/Class-Discover
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.448.60[metanoindex=]
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.110
	dev-perl/Test-Fatal
	>=virtual/perl-Module-Build-0.36.01
	>=virtual/perl-Test-Simple-0.88
	virtual/perl-File-Temp
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
