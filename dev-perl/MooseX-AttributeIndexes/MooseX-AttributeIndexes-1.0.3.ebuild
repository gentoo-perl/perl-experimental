# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.0.3
inherit perl-module

DESCRIPTION='Advertise metadata about your Model-Representing Classes to Any Database tool.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_build() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_runtime() {
	# Moose 0.94 ( 0.940.0 )
	echo \>=dev-perl/Moose-0.940.0
	# Moose::Exporter
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util::MetaRole
	echo dev-perl/Moose
	# MooseX::Types::Moose 0.19 ( 0.190.0 )
	echo \>=dev-perl/MooseX-Types-0.190.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# namespace::autoclean 0.08 ( 0.80.0 )
	echo \>=dev-perl/namespace-autoclean-0.80.0
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
	# Test::Moose
	echo dev-perl/Moose
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
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
