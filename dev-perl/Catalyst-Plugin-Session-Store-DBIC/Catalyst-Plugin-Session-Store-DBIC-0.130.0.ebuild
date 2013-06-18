# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='Store your sessions via DBIx::Class'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Catalyst 5.65 ( 5.650.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.650.0
	# Catalyst::Exception
	echo dev-perl/Catalyst-Runtime
	# Catalyst::Plugin::Session::Store::Delegate 0.05 ( 0.50.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-Store-Delegate-0.50.0
	# Class::Accessor::Fast
	echo dev-perl/Class-Accessor
	# DBIx::Class 0.07000 ( 0.70.0 )
	echo \>=dev-perl/DBIx-Class-0.70.0
	# FindBin
	echo dev-lang/perl
	# MIME::Base64
	echo virtual/perl-MIME-Base64
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Storable
	echo virtual/perl-Storable
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Warn 0.20 ( 0.200.0 )
	echo \>=dev-perl/Test-Warn-0.200.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
