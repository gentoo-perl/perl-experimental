# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01053720
inherit perl-module

DESCRIPTION="Shell Out and collect the result in a DZ plug-in."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	>=virtual/perl-Digest-SHA-5.47 $(comment 5.470.0)
	>=virtual/perl-digest-base-1.16 $(comment 1.160.0)
	>=dev-perl/Dist-Zilla-2.0.0
	$(comment Dist::Zilla::File::InMemory ">=" dzil 1.0.0)
	>=dev-perl/File-Find-Rule-0.30 $(comment 0.300.0)
	>=dev-perl/File-Slurp-9999.13 $(comment 9999.130.0)
	>=dev-perl/File-Tempdir-0.02 $(comment 0.20.0)
	>=dev-perl/File-chdir-0.100.200
	>=dev-perl/Moose-0.92 $(comment 0.920.0)
	$(comment Moose::Role)
	>=dev-perl/Path-Class-0.17 $(comment 0.170.0)
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	>=dev-perl/namespace-autoclean-0.09 $(comment 0.90.0)
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Dist-Zilla
	$(comment Dist::Zilla::Role::FileInjector ">=" dzil 1.0.0)
	$(comment Dist::Zilla::Role::InstallTool ">=" dzil 1.0.0)
	$(comment Dist::Zilla::Tester ">=" 1.100.710)
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
