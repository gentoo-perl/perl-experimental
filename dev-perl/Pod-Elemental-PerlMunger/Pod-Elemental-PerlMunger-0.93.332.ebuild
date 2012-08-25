# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.093332
inherit perl-module

DESCRIPTION='a thing that takes a string of Perl and rewrites its documentation'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# PPI
	echo dev-perl/PPI
	# Pod::Elemental 0.092941 ( 0.92.941 )
	echo \>=dev-perl/Pod-Elemental-0.92.941
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Moose
	echo dev-perl/Moose
	# Pod::Elemental
	echo dev-perl/Pod-Elemental
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
