# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=3.101636
inherit perl-module

DESCRIPTION='weave together a Pod document from an outline'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Config::MVP 2 ( 2.0.0 )
	echo \>=dev-perl/Config-MVP-2.0.0
	# Config::MVP::Assembler
	echo dev-perl/Config-MVP
	# Config::MVP::Assembler::WithBundles
	echo dev-perl/Config-MVP
	# Config::MVP::Reader::Finder
	echo dev-perl/Config-MVP
	# Config::MVP::Reader::INI
	echo dev-perl/Config-MVP-Reader-INI
	# DateTime
	echo dev-perl/DateTime
	# File::Spec
	echo virtual/perl-File-Spec
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Log::Dispatchouli 1.100710 ( 1.100.710 )
	echo \>=dev-perl/Log-Dispatchouli-1.100.710
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox 0.10 ( 0.100.0 )
	echo \>=dev-perl/Moose-Autobox-0.100.0
	# Moose::Role
	echo dev-perl/Moose
	# Params::Util
	echo dev-perl/Params-Util
	# Pod::Elemental 0.100220 ( 0.100.220 )
	echo \>=dev-perl/Pod-Elemental-0.100.220
	# Pod::Elemental::Document
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Element::Nested
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Element::Pod5::Command
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Element::Pod5::Ordinary
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Element::Pod5::Region
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Element::Pod5::Verbatim
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Selectors
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Transformer::Gatherer
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Transformer::Nester
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Transformer::Pod5
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Types
	echo dev-perl/Pod-Elemental
	# String::Flogger 1 ( 1.0.0 )
	echo \>=dev-perl/String-Flogger-1.0.0
	# String::Formatter 0.100680 ( 0.100.680 )
	echo \>=dev-perl/String-Formatter-0.100.680
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# Text::Wrap
	echo virtual/perl-Text-Tabs+Wrap
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# PPI
	echo dev-perl/PPI
	# Software::License::Artistic_1_0
	echo dev-perl/Software-License
	# Software::License::Perl_5
	echo dev-perl/Software-License
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
