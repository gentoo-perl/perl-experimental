# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='per-session custom expiry times'
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
}
perl_meta_runtime() {
	# Catalyst::Plugin::Session 0.11 ( 0.110.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-0.110.0
	# Catalyst::Runtime 5.80 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Moose
	echo dev-perl/Moose
	# Test::More
	echo virtual/perl-Test-Simple
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
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
