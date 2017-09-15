# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.9152
inherit perl-module

DESCRIPTION='Ameliorated interface to the CPAN'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cpantest md5 signature storable sqlite_backend selfupgrade"
REQUIRED_USE="
	cpantest? ( selfupgrade )
	md5? ( selfupgrade )
	signature? ( selfupgrade )
	storable? ( selfupgrade )
	sqlite_backend? ( selfupgrade )
"
# See Selfupdate.pm in the dist
# All values here come from there.
RDEPEND_cpantest="
	>=dev-perl/Test-Reporter-1.340.0
	>=virtual/perl-Parse-CPAN-Meta-1.420.0
"
RDEPEND_md5="
	virtual/perl-Digest-SHA
"
RDEPEND_signature="
	app-crypt/gnupg
	>=dev-perl/Module-Signature-0.60.0
"
RDEPEND_storable="
	virtual/perl-Storable
"
RDEPEND_sqlite_backend="
	dev-perl/DBIx-Simple
	dev-perl/DBD-SQLite
"
RDEPEND_selfupgrade="
	sqlite_backend? ( ${RDEPEND_sqlite_backend} )
	storable? ( ${RDEPEND_storable} )
	signature? ( ${RDEPEND_signature} )
	md5? ( ${RDEPEND_md5} )
	cpantest? ( ${RDEPEND_cpantest} )
	>=virtual/perl-File-Fetch-0.160.0
	>=virtual/perl-File-Spec-0.820.0
	>=virtual/perl-IPC-Cmd-0.360.0
	>=virtual/perl-Locale-Maketext-Simple-0.10.0
	>=virtual/perl-Module-Load-0.100.0
	>=virtual/perl-Module-Load-Conditional-0.500.0
	>=virtual/perl-version-0.770.0
	>=virtual/perl-Params-Check-0.360.0
	>=virtual/perl-Test-Harness-2.620.0
	>=virtual/perl-Test-Simple-0.470.0
	>=virtual/perl-Archive-Tar-1.230.0
	>=virtual/perl-IO-Zlib-1.40.0
	>=virtual/perl-Module-CoreList-2.220.0
	>=virtual/perl-Module-Loaded-0.10.0
	>=virtual/perl-Parse-CPAN-Meta-1.420.0
	>=virtual/perl-ExtUtils-Install-1.420.0
	!<dev-perl/CPANPLUS-Dist-Build-0.600.0
"
RDEPEND="selfupgrade? ( ${RDEPEND_selfupgrade} )
	>=dev-perl/Archive-Extract-0.160.0
	>=dev-perl/Log-Message-0.10.0
	>=dev-perl/Module-Pluggable-2.400.0
	>=dev-perl/Object-Accessor-0.440.0
	>=virtual/perl-Package-Constants-0.10.0
	>=dev-perl/Term-UI-0.180.0
"
DEPEND="${RDEPEND}
	virtual/perl-File-Spec
"