# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LEMBARK
MODULE_VERSION=1.8
inherit perl-module

DESCRIPTION='FindBin::libs - locate and a '\''use lib'\'' or export directories based on .'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=virtual/perl-Module-Build-0.400.300
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	# echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Symbol
	# echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
	# strict
	# echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
