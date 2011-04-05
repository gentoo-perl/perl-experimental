# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01054020
inherit perl-module

DESCRIPTION="Build Module::Install based Distributions with Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	$(comment Dist::Zilla::File::InMemory is dzil 1.0.0)
	$(comment Dist::Zilla::Role::InstallTool is dzil 1.0.0)
	$(comment Dist::Zilla::Role::PrereqSource is dzil 2.100.860)
	>=dev-perl/Dist-Zilla-Role-Tempdir-0.10.276.220
	$(comment Dist::Zilla::Role::TestRunner is dzil 1.93.140)
	$(comment Dist::Zilla::Role::TextTemplate is dzil 1.0.0)
	>=dev-perl/Module-Install-0.90 $(comment 0.900.0)
	>=dev-perl/Moose-0.92 $(comment 0.920.0)
	>=dev-perl/Moose-Autobox-0.10 $(comment 0.100.0)
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure/build)
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
	test? (
		$(comment virtual/perl-English)
		$(comment virtual/File-Find)
		virtual/perl-File-Temp
		>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
