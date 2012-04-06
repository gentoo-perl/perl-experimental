# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION='Memcached storage backend for'
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
}
perl_meta_runtime() {
	# Cache::Memcached::Managed
	echo dev-perl/Cache-Memcached-Managed
	# Catalyst::ClassData
	echo dev-perl/Catalyst-Runtime
	# Catalyst::Plugin::Session 0.26 ( 0.260.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-0.260.0
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Moose
	echo dev-perl/Moose
	# MooseX::Emulate::Class::Accessor::Fast
	echo dev-perl/MooseX-Emulate-Class-Accessor-Fast
	# namespace::clean
	echo dev-perl/namespace-clean
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
