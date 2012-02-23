# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LEMBARK
MODULE_VERSION=1.63
inherit perl-module

DESCRIPTION='FindBin::libs - locate and a '\''use lib'\'' or export directories based on .'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=virtual/perl-Module-Build-0.380.0
}
perl_meta_runtime() {
	# Carp
	# echo dev-perl/Carp
	# Cwd
	echo virtual/perl-File-Spec
	# File::Spec
	echo virtual/perl-File-Spec
	# FindBin
	echo dev-lang/perl
	# Symbol
	echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
	# strict
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
