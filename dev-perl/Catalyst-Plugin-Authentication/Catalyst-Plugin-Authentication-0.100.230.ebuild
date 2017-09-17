# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.10023
inherit perl-module

DESCRIPTION='Infrastructure plugin for the Catalyst authentication framework.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# Class::MOP
	echo dev-perl/Moose
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Moose
	echo dev-perl/Moose
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Catalyst::Plugin::Session 0.10 ( 0.100.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-0.100.0
	# Catalyst::Runtime
	echo dev-perl/Catalyst-Runtime
	# Class::Inspector
	echo dev-perl/Class-Inspector
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Moose
	echo dev-perl/Moose
	# MooseX::Emulate::Class::Accessor::Fast
	echo dev-perl/MooseX-Emulate-Class-Accessor-Fast
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# Try::Tiny
	echo dev-perl/Try-Tiny
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
