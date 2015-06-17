# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ASH
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION='File based storage model for Catalyst.'

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
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Catalyst 5.80 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# Catalyst::Component::InstancePerContext
	echo dev-perl/Catalyst-Component-InstancePerContext
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Moose
	echo dev-perl/Moose
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Path::Class
	echo dev-perl/Path-Class
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
