# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='An abstract Moose role for setting attributes from a configfile'
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
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.42 ( 0.420.0 )
	echo \>=virtual/perl-Test-Simple-0.42
}
perl_meta_runtime() {
	# Moose 0.35 ( 0.350.0 )
	echo \>=dev-perl/Moose-0.350
	# MooseX::Types::Path::Class 0.04 ( 0.40.0 )
	echo \>=dev-perl/MooseX-Types-Path-Class-0.40.0
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
