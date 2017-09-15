# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=SATOH
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='Manage settings'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# File::HomeDir
	echo dev-perl/File-HomeDir
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp 0.2 ( 0.200.0 )
	echo \>=virtual/perl-File-Temp-0.200.0
	# Filter::Util::Call
	echo dev-perl/Filter
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Path::Class
	echo dev-perl/Path-Class
	# YAML::Syck 1 ( 1.0.0 )
	echo \>=dev-perl/YAML-Syck-1.0.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
