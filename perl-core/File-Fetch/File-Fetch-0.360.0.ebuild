# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.36
inherit perl-module

DESCRIPTION='Generic file fetching code'
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
	# File::Copy
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec 0.82 ( 0.820.0 )
	echo \>=virtual/perl-File-Spec-0.82
	# IPC::Cmd 0.42 ( 0.420.0 )
	echo \>=virtual/perl-IPC-Cmd-0.420
	# Locale::Maketext::Simple
	echo virtual/perl-Locale-Maketext-Simple
	# Module::Load::Conditional 0.04 ( 0.40.0 )
	echo \>=virtual/perl-Module-Load-Conditional-0.040
	# Params::Check 0.07 ( 0.70.0 )
	echo \>=virtual/perl-Params-Check-0.07
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="network"
