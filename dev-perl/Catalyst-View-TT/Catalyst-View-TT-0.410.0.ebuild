# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=0.41
inherit perl-module

DESCRIPTION='Template View Class'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Catalyst 5.7 ( 5.700.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.700.0
	# Class::Accessor
	echo dev-perl/Class-Accessor
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Path::Class
	echo dev-perl/Path-Class
	# Template
	echo dev-perl/Template-Toolkit
	# Template::Timer
	echo dev-perl/Template-Timer
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
