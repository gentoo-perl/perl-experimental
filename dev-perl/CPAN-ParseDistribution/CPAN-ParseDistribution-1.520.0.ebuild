# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DCANTRELL
MODULE_VERSION=1.52
inherit perl-module

DESCRIPTION='index a file from the BackPAN'
LICENSE="|| ( Artistic GPL-2 )"
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
	# Archive::Tar
	echo virtual/perl-Archive-Tar
	# Archive::Zip
	echo dev-perl/Archive-Zip
	# Devel::CheckOS
	echo dev-perl/Devel-CheckOS
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::Path
	echo virtual/perl-File-Path
	# File::Temp
	echo virtual/perl-File-Temp
	# Parallel::ForkManager 1.03 ( 1.30.0 )
	echo \>=dev-perl/Parallel-ForkManager-1.30.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# YAML 0.6 ( 0.600.0 )
	echo \>=dev-perl/yaml-0.600.0
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
