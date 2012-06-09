# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MICHAELR
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION='Role for daemonizing your Moose based application'
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
	# Test::Moose
	echo dev-perl/Moose
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Moose 0.33 ( 0.330.0 )
	echo \>=dev-perl/Moose-0.330
	# MooseX::Getopt 0.07 ( 0.70.0 )
	echo \>=dev-perl/MooseX-Getopt-0.70.0
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
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
