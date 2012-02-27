# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='Tell Log::Any where to send its logs'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Devel::GlobalDestruction
	echo dev-perl/Devel-GlobalDestruction
	# Guard
	echo dev-perl/Guard
	# Log::Any
	echo dev-perl/Log-Any
}
perl_meta_test() {
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
