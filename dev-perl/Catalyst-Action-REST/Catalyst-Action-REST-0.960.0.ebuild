# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.96
inherit perl-module

DESCRIPTION='Automated REST Method Dispatching'
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
}
perl_meta_runtime() {
	# Catalyst::Runtime 5.80030 ( 5.800.300 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.300
	# Class::Inspector 1.13 ( 1.130.0 )
	echo \>=dev-perl/Class-Inspector-1.13
	# Config::General
	echo dev-perl/config-general
	# Data::Serializer 0.36 ( 0.360.0 )
	echo \>=dev-perl/Data-Serializer-0.360.0
	# Data::Taxi
	echo dev-perl/Data-Taxi
	# FreezeThaw
	echo dev-perl/FreezeThaw
	# HTML::Parser
	echo dev-perl/HTML-Parser
	# JSON 2.12 ( 2.120.0 )
	echo \>=dev-perl/JSON-2.12
	# JSON::XS 2.2222 ( 2.222.200 )
	echo \>=dev-perl/JSON-XS-2.222.200
	# LWP::UserAgent 2.033 ( 2.33.0 )
	echo \>=dev-perl/libwww-perl-2.33.0
	# MRO::Compat 0.10 ( 0.100.0 )
	echo \>=dev-perl/MRO-Compat-0.100.0
	# Module::Pluggable::Object
	echo virtual/perl-Module-Pluggable
	# Moose 1.03 ( 1.30.0 )
	echo \>=dev-perl/Moose-1.30.0
	# PHP::Serialization
	echo dev-perl/PHP-Serialization
	# Params::Validate 0.76 ( 0.760.0 )
	echo \>=dev-perl/Params-Validate-0.76
	# URI::Find
	echo dev-perl/URI-Find
	# XML::Simple
	echo dev-perl/XML-Simple
	# YAML::Syck 0.67 ( 0.670.0 )
	echo \>=dev-perl/YAML-Syck-0.67
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
SRC_TEST="do"
