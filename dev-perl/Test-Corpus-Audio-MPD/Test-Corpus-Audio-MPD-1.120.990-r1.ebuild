# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.120990
inherit perl-module

DESCRIPTION='automate launching of fake mdp for testing purposes'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Exporter
	echo virtual/perl-Exporter
	# File::Copy
	echo dev-lang/perl
	# File::ShareDir::PathClass
	echo dev-perl/File-ShareDir-PathClass
	# File::Temp
	echo virtual/perl-File-Temp
	# Path::Class
	echo dev-perl/Path-Class
	# Readonly
	echo dev-perl/Readonly
	# base
	# echo virtual/perl-base
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
	media-sound/mpd
"
RDEPEND="
	$(perl_meta_runtime)
	media-sound/mpd
"
