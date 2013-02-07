# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DLAMBLEY
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION='ISO8601 date and duration string type constraints and coercions for Moose'
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
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# DateTime 0.41 ( 0.410.0 )
	echo \>=dev-perl/DateTime-0.41
	# DateTime::Format::Duration 1.03 ( 1.30.0 )
	echo \>=dev-perl/DateTime-Format-Duration-1.30.0
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose 0.79 ( 0.790.0 )
	echo \>=dev-perl/Moose-0.790.0
	# MooseX::Types 0.10 ( 0.100.0 )
	echo \>=dev-perl/MooseX-Types-0.100.0
	# MooseX::Types::DateTime 0.03 ( 0.30.0 )
	echo \>=dev-perl/MooseX-Types-DateTime-0.30.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# aliased
	echo dev-perl/aliased
	# namespace::autoclean 0.05 ( 0.50.0 )
	echo \>=dev-perl/namespace-autoclean-0.50.0
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
