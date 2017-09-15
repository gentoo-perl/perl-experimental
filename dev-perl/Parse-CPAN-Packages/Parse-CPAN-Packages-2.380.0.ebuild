# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=MITHALDU
MODULE_VERSION=2.38
inherit perl-module

DESCRIPTION='Parse 02packages.details.txt.gz'
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
	# Archive::Peek
	echo dev-perl/Archive-Peek
	# CPAN::DistnameInfo
	echo dev-perl/CPAN-DistnameInfo
	# Compress::Zlib
	echo virtual/perl-IO-Compress
	# File::Slurp
	echo dev-perl/File-Slurp
	# Moose
	echo dev-perl/Moose
	# PPI
	echo dev-perl/PPI
	# Path::Class
	echo dev-perl/Path-Class
	# Test::InDistDir
	echo dev-perl/Test-InDistDir
	# Test::More
	echo virtual/perl-Test-Simple
	# version
	echo virtual/perl-version
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
