# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=3.101633
inherit perl-module

DESCRIPTION="weave together a Pod document from an outline"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_eumm_configure() {
	# strict

	# warnings

	# ExtUtils::MakeMaker 6.56
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
}
perl_eumm_build() {
	# PPI
	echo dev-perl/PPI
	# Software::License::Artistic_1_0
	echo dev-perl/Software-License
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::More 0.96
	echo \>=virtual/perl-Test-Simple-0.96
}
perl_eumm_prereq_pm() {
	# Config::MVP 2
	echo \>=dev-perl/Config-MVP-2.0.0
	# Config::MVP::Assembler
	echo \>=dev-perl/Config-MVP-0.92.40
	# Config::MVP::Assembler::WithBundles
	echo \>=dev-perl/Config-MVP-0.92.990
	# Config::MVP::Reader::Finder
	echo \>=dev-perl/Config-MVP-0.92.990
	# Config::MVP::Reader::INI
	echo dev-perl/Config-MVP-Reader-INI
	# DateTime
	echo dev-perl/DateTime
	# File::Spec
	echo virtual/perl-File-Spec
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Log::Dispatchouli 1.100710
	echo \>=dev-perl/Log-Dispatchouli-1.100.710
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox 0.10
	echo \>=dev-perl/Moose-Autobox-0.100.0
	# Params::Util
	echo dev-perl/Params-Util
	# Pod::Elemental 0.100220
	echo \>=dev-perl/Pod-Elemental-0.100.220
	# Pod::Elemental::Document
	echo \>=dev-perl/Pod-Elemental-0.3.0
	# Pod::Elemental::Element::Nested
	echo \>=dev-perl/Pod-Elemental-0.92.910
	# Pod::Elemental::Element::Pod5::Command
	echo \>=dev-perl/Pod-Elemental-0.92.901
	# Pod::Elemental::Element::Pod5::Ordinary
	echo \>=dev-perl/Pod-Elemental-0.92.500
	# Pod::Elemental::Element::Pod5::Region
	echo \>=dev-perl/Pod-Elemental-0.92.900
	# Pod::Elemental::Element::Pod5::Verbatim
	echo \>=dev-perl/Pod-Elemental-0.92.500
	# Pod::Elemental::Selectors
	echo \>=dev-perl/Pod-Elemental-0.92.940
	# Pod::Elemental::Transformer::Gatherer
	echo \>=dev-perl/Pod-Elemental-0.92.910
	# Pod::Elemental::Transformer::Nester
	echo \>=dev-perl/Pod-Elemental-0.92.910
	# Pod::Elemental::Transformer::Pod5
	echo \>=dev-perl/Pod-Elemental-0.92.500
	# Pod::Elemental::Types
	echo \>=dev-perl/Pod-Elemental-0.92.500
	# String::Flogger 1
	echo \>=dev-perl/String-Flogger-1.0.0
	# String::Formatter 0.100680
	echo \>=dev-perl/String-Formatter-0.100.680
	# String::RewritePreifx
	echo dev-perl/String-RewritePrefix
	# Text::Wrap
	echo virtual/perl-Text-Tabs+Wrap
	# namespace::autoclean
	echo dev-perl/namespace-autoclean

	# strict

	# warnings
}
DEPEND="$(perl_eumm_configure) $(perl_eumm_build) $(perl_eumm_prereq_pm)"
RDEPEND="$(perl_eumm_prereq_pm)"
SRC_TEST="do"
