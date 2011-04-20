# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION="0.56"
inherit perl-module

DESCRIPTION="CPANPLUS plugin to install packages that use Build.PL"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }

COMMON_DEPEND="
	>=virtual/perl-Test-Harness-3.16 $(comment 3.160.0)
	>=virtual/perl-CPANPLUS-0.840.0
	virtual/perl-Locale-Maketext-Simple
	>=virtual/perl-Params-Check-0.26 $(comment 0.260.0)
	>=virtual/perl-IPC-Cmd-0.42 $(comment 0.420.0)
	>=virtual/perl-Module-Load-0.16 $(comment 0.160.0)
	>=virtual/perl-Module-Load-Conditional-0.300 $(comment 0.300.0)
	>=virtual/perl-Module-Pluggable-3.8 $(comment 3.800.0)
	>=virtual/perl-Module-Build-0.32 $(comment 0.320.0)
	virtual/perl-File-Spec
	>=virtual/perl-ExtUtils-Install-1.42 $(comment 1.420.0)
"
DEPEND="
	${COMMON_DEPEND}
	test? (
	>=virtual/perl-Test-Simple-0.47 $(comment Test::More 0.470.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
