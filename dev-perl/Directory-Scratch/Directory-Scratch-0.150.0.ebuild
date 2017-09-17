# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION='Easy-to-use self-cleaning scratch space.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# File::Copy
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Slurp 9999.12 ( 9999.120.0 )
	echo \>=dev-perl/File-Slurp-9999.12
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# File::stat
	echo dev-lang/perl
	# Path::Class
	echo dev-perl/Path-Class
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
