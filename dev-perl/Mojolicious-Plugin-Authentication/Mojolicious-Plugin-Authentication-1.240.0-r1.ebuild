# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MADCAT
MODULE_VERSION=1.24
inherit perl-module

DESCRIPTION='A plugin to make authentication a bit easier'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_build() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_runtime() {
	# Mojo::Base
	echo dev-perl/Mojolicious
}
perl_meta_test() {
	# Mojolicious::Lite
	echo dev-perl/Mojolicious
	# Test::Mojo
	echo dev-perl/Mojolicious
	# Test::More
	echo virtual/perl-Test-Simple
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
