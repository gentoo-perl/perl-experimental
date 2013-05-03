# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.9130
inherit perl-module

DESCRIPTION='Ameliorated interface to the CPAN'
LICENSE=" || ( Artistic GPL-2 )"
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

perl_feature_cpantest() {
	# Test::Reporter 1.34
	echo \>=dev-perl/Test-Reporter-1.340.0
	# Parse::CPAN::Meta 1.4200
	echo \>=virtual/perl-Parse-CPAN-Meta-1.420
}
perl_feature_md5() {
	# Digest::SHA
	echo virtual/perl-Digest-SHA
}
perl_feature_signature() {
	# gpg
	echo app-crypt/gnupg
	# Module::Signature 0.06
	echo \>=dev-perl/Module-Signature-0.60.0
}
perl_feature_storable() {
	# Storable
	echo virtual/perl-Storable
}
perl_feature_sqlite_backend() {
	# DBIx::Simple
	echo dev-perl/DBIx-Simple
	# DBD::SQLite
	echo dev-perl/DBD-SQLite
}
perl_feature_selfupgrade() {
	echo "sqlite_backend? ( $( perl_feature_sqlite_backend ) )"
	echo "storable? ( $( perl_feature_storable ) )"
	echo "signature? ( $( perl_feature_signature ) )"
	echo "md5? ( $( perl_feature_md5 ) )"
	echo "cpantest? ( $( perl_feature_cpantest ) )"

	# File::Fetch 0.15_02
	echo \>=virtual/perl-File-Fetch-0.160.0
	# File::Spec 0.82
	echo \>=virtual/perl-File-Spec-0.82
	# IPC::Cmd 0.36
	echo \>=virtual/perl-IPC-Cmd-0.360.0
	# Locale::Maketext::Simple 0.01
	echo \>=virtual/perl-Locale-Maketext-Simple-0.10.0
	# Log::Message 0.01
	echo \>=virtual/perl-Log-Message-0.01
	# Module::Load 0.10 
	echo \>=virtual/perl-Module-Load-0.100.0
	# Module::Load::Conditional 0.38 / 0.380.0
	echo \>=virtual/perl-Module-Load-Conditional-0.380
	# version 0.77
	echo \>=virtual/perl-version-0.77
	# Params::Check 0.22
	echo \>=virtual/perl-Params-Check-0.22
	# Package::Constants 0.01
	echo \>=virtual/perl-Package-Constants-0.10.0
	# Term::UI 0.18
	echo \>=virtual/perl-Term-UI-0.18
	# Test::Harness 2.62
	echo \>=virtual/perl-Test-Harness-2.62
	# Test::Simple 0.47
	echo \>=virtual/perl-Test-Simple-0.47
	# Archive::Extract 0.16
	echo \>=virtual/perl-Archive-Extract-0.160.0
	# Archive::Tar 1.23
	echo \>=virtual/perl-Archive-Tar-1.23
	# IO::Zlib 1.04
	echo \>=virtual/perl-IO-Zlib-1.40.0
	# Object::Accessor 0.34
	echo \>=virtual/perl-Object-Accessor-0.34
	# Module::CoreList 2.22
	echo \>=virtual/perl-Module-CoreList-2.22
	# Module::Pluggable 2.4
	echo \>=virtual/perl-Module-Pluggable-2.400.0
	# Module::Loaded 0.01
	echo \>=virtual/perl-Module-Loaded-0.10.0
	# Parse::CPAN::Meta 1.4200
	echo \>=virtual/perl-Parse-CPAN-Meta-1.420
	# ExtUtils::Install 1.42
	echo \>=virtual/perl-ExtUtils-Install-1.42
}
DEPEND="selfupgrade? ( $( perl_feature_selfupgrade ) )"
RDEPEND="selfupgrade? ( $( perl_feature_selfupgrade ) )"
SRC_TEST="do"
