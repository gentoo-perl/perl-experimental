# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION='Role for daemonizing your Moose based application'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# File::Path 2.08 ( 2.80.0 )
	echo \>=virtual/perl-File-Path-2.80.0
	# Moose 0.33 ( 0.330.0 )
	echo \>=dev-perl/Moose-0.330.0
	# MooseX::Getopt 0.07 ( 0.70.0 )
	echo \>=dev-perl/MooseX-Getopt-0.70.0
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
}
perl_meta_test() {
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Moose
	echo dev-perl/Moose
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
