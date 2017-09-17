# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ABRAXXA
MODULE_VERSION=0.30
inherit perl-module

DESCRIPTION='Make serving static pages painless.'

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
	# Catalyst::Runtime 5.80008 ( 5.800.80 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.80
	# MIME::Types 1.25 ( 1.250.0 )
	echo \>=dev-perl/MIME-Types-1.25
	# Moose
	echo dev-perl/Moose
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# Test::More
	echo virtual/perl-Test-Simple
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
