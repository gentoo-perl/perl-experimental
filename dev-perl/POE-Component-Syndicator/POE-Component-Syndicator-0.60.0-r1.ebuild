# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=HINRIK
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION='A POE component base class which implements the Observer pattern'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Object::Pluggable 1.29 ( 1.290.0 )
	echo \>=dev-perl/Object-Pluggable-1.290.0
	# POE 1.311 ( 1.311.0 )
	echo \>=dev-perl/POE-1.311.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
