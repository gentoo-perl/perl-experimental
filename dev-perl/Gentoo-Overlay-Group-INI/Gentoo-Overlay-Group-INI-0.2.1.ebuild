# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.2.1
inherit perl-module

DESCRIPTION='Load a list of overlays defined in a configuration file.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.360.100
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.360.100
}
perl_meta_runtime() {
	# Config::MVP::Assembler
	echo dev-perl/Config-MVP
	# Config::MVP::Reader
	echo dev-perl/Config-MVP
	# Config::MVP::Reader::INI
	echo dev-perl/Config-MVP-Reader-INI
	# Config::MVP::Section
	echo dev-perl/Config-MVP
	# File::HomeDir
	echo dev-perl/File-HomeDir
	# Gentoo::Overlay::Exceptions
	echo dev-perl/Gentoo-Overlay
	# Gentoo::Overlay::Group
	echo dev-perl/Gentoo-Overlay-Group
	# Moose
	echo dev-perl/Moose
	# Path::Class::Dir
	echo dev-perl/Path-Class
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# File::Tempdir
	echo dev-perl/File-Tempdir
	# FindBin
	echo dev-lang/perl
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
	# autodie
	echo dev-perl/autodie
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
