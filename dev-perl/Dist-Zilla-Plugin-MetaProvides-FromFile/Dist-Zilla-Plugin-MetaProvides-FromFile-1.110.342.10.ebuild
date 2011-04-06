# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.11034201
inherit perl-module

DESCRIPTION="In the event nothing else works, pull in hand-crafted metadata from a specified file."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.110.342.10
	dev-perl/Config-INI
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Dist-Zilla-4.0
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01
	>=virtual/perl-Test-Simple-0.88
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
