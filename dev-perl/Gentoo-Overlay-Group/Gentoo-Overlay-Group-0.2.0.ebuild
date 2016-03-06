# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.2.0
inherit perl-module

DESCRIPTION='A collection of Gentoo::Overlay objects.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_build() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_runtime() {
	# Gentoo::Overlay v1.0.3 ( 1.0.3 )
	echo \>=dev-perl/Gentoo-Overlay-1.0.3
	# Gentoo::Overlay::Exceptions
	echo dev-perl/Gentoo-Overlay
	# Gentoo::Overlay::Types
	echo dev-perl/Gentoo-Overlay
	# Moose
	echo dev-perl/Moose
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Path::Tiny
	echo dev-perl/MooseX-Types-Path-Tiny
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
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
	# FindBin
	echo dev-lang/perl
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# Test::Output
	echo dev-perl/Test-Output
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
