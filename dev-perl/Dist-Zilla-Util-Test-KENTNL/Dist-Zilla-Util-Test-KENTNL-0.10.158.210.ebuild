# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01015821
inherit perl-module

DESCRIPTION="KENTNL's DZil plugin testing tool."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	>=dev-perl/Dist-Zilla-4.0.0 $(comment Dist::Zilla::Tester since 1.100.710)
	dev-perl/Sub-Exporter
	>=dev-perl/Dist-Zilla-4.200.2 $(comment Test::DZil)
	dev-perl/Try-Tiny
"
DEPEND="
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
