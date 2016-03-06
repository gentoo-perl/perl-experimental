# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=SZABGAB
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION='A simple parallel processing fork manager'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Test::More 0.80 ( 0.800.0 )
	echo \>=virtual/perl-Test-Simple-0.80
}
perl_meta_runtime() {
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# POSIX
	echo dev-lang/perl
	# Storable
	echo virtual/perl-Storable
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
