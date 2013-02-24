# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.68
inherit perl-module

DESCRIPTION='Generic archive extracting mechanism'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# File::Basename
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec 0.82 ( 0.820.0 )
	echo \>=virtual/perl-File-Spec-0.82
	# IPC::Cmd 0.64 ( 0.640.0 )
	echo \>=virtual/perl-IPC-Cmd-0.640
	# Locale::Maketext::Simple
	echo virtual/perl-Locale-Maketext-Simple
	# Module::Load::Conditional 0.04 ( 0.40.0 )
	echo \>=virtual/perl-Module-Load-Conditional-0.040
	# Params::Check 0.07 ( 0.70.0 )
	echo \>=virtual/perl-Params-Check-0.07
	# Test::More
	echo virtual/perl-Test-Simple
	# if
	# echo virtual/perl-if
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
