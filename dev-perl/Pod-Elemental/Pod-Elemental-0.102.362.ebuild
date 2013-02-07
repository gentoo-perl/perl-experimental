# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.102362
inherit perl-module

DESCRIPTION='work with nestable Pod elements'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Encode
	echo virtual/perl-Encode
	# Mixin::Linewise::Readers
	echo dev-perl/Mixin-Linewise
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox 0.10 ( 0.100.0 )
	echo \>=dev-perl/Moose-Autobox-0.100.0
	# Moose::Role 0.90 ( 0.900.0 )
	echo \>=dev-perl/Moose-0.900.0
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Pod::Eventual::Simple 0.004 ( 0.4.0 )
	echo \>=dev-perl/Pod-Eventual-0.4.0
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# String::Truncate
	echo dev-perl/String-Truncate
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Sub::Exporter::ForMethods
	echo dev-perl/Sub-Exporter-ForMethods
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Differences
	echo dev-perl/Test-Differences
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# strict
	echo dev-lang/perl
	# utf8
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
