# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ROKR
MODULE_VERSION=0.025
inherit perl-module

DESCRIPTION='Inject components into your Catalyst application'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Test::Most
	echo dev-perl/Test-Most
}
perl_meta_runtime() {
	# Catalyst::Runtime 5.8 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# Class::Inspector
	echo dev-perl/Class-Inspector
	# Devel::InnerPackage
	echo virtual/perl-Module-Pluggable
	# parent
	echo virtual/perl-parent
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
