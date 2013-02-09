# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DCANTRELL
MODULE_VERSION=1.4
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
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::Path
	echo virtual/perl-File-Path
	# File::Temp
	echo virtual/perl-File-Temp
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
SRC_TEST="do"
