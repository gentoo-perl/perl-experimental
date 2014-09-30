# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.62
inherit perl-module

DESCRIPTION='CPANPLUS plugin to install packages that use Build.PL'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# CPANPLUS 0.84 ( 0.840.0 )
	echo \>=dev-perl/CPANPLUS-0.840.0
	# ExtUtils::Install 1.42 ( 1.420.0 )
	echo \>=virtual/perl-ExtUtils-Install-1.42
	# File::Spec
	echo virtual/perl-File-Spec
	# IPC::Cmd 0.42 ( 0.420.0 )
	echo \>=virtual/perl-IPC-Cmd-0.420
	# Locale::Maketext::Simple
	echo virtual/perl-Locale-Maketext-Simple
	# Module::Build 0.32 ( 0.320.0 )
	echo \>=virtual/perl-Module-Build-0.32
	# Module::Load 0.16 ( 0.160.0 )
	echo \>=virtual/perl-Module-Load-0.160.0
	# Module::Load::Conditional 0.30 ( 0.300.0 )
	echo \>=virtual/perl-Module-Load-Conditional-0.300
	# Module::Pluggable 3.8 ( 3.800.0 )
	echo \>=virtual/perl-Module-Pluggable-3.800.0
	# Params::Check 0.26 ( 0.260.0 )
	echo \>=virtual/perl-Params-Check-0.26
	# Test::Harness 3.16 ( 3.160.0 )
	echo \>=virtual/perl-Test-Harness-3.16
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
