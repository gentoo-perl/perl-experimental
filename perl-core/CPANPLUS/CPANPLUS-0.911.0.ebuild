# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.9110
inherit perl-module

DESCRIPTION="API & CLI access to the CPAN mirrors"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cpantest md5 signature storable sqlite_backend"

# See SelfUpgrade.pm
comment() { echo ''; }

RDEPEND="
	>=virtual/perl-File-Fetch-0.16 $(comment 0.150.200_rc)
	>=virtual/perl-File-Spec-0.82 $(comment 0.820.0)
	>=virtual/perl-IPC-Cmd-0.360.0
	>=virtual/perl-Locale-Maketext-Simple-0.10.0
	>=virtual/perl-Log-Message-0.01 $(comment 0.10.0)
	>=virtual/perl-Module-Load-0.100.0
	>=virtual/perl-Module-Load-Conditional-0.380 $(comment 0.380.0)
	>=virtual/perl-version-0.77 $(comment 0.770.0)
	>=virtual/perl-Params-Check-0.22 $(comment 0.220.0)
	>=virtual/perl-Package-Constants-0.10.0
	>=virtual/perl-Term-UI-0.18 $(comment 0.180.0)
	>=virtual/perl-Test-Harness-2.62 $(comment 2.620.0)
	>=virtual/perl-Test-Simple-0.47 $(comment 0.470.0 Test::More)
	>=virtual/perl-Archive-Extract-0.160.0
	>=virtual/perl-Archive-Tar-1.23 $(comment 1.230.0)
	>=virtual/perl-IO-Zlib-1.40.0
	>=virtual/perl-Object-Accessor-0.34 $(comment 0.340.0)
	>=virtual/perl-Module-CoreList-2.22 $(comment 2.220.0)
	>=virtual/perl-Module-Pluggable-2.400.0
	>=virtual/perl-Module-Loaded-0.10.0
	>=virtual/perl-Parse-CPAN-Meta-1.420 $(comment 1.420.0)
	>=virtual/perl-ExtUtils-Install-1.42 $(comment 1.420.0)

	$(comment ">=virtual/perl-CPANPLUS-Dist-Build-0.240.0")

	cpantest? (
		>=dev-perl/Test-Reporter-1.34 $(comment 1.340.0)
		>=virtual/perl-Parse-CPAN-Meta-1.420 $(comment 1.420.0)
	)
	md5? (
		virtual/perl-Digest-SHA
	)
	signature? (
		app-crypt/gnupg
		>=dev-perl/Module-Signature-0.06 $(comment 0.60.0)
	)
	storable? (
		virtual/perl-Storable
	)
	sqlite_backend? (
		dev-perl/DBIx-Simple
		dev-perl/DBD-SQLite
	)

"
DEPEND="${RDEPEND}
"

SRC_TEST=do
