# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.101626
inherit perl-module

DESCRIPTION='a PodWeaver plugin used to build Task distributions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla 2 ( 2.0.0 )
	echo \>=dev-perl/Dist-Zilla-2.0.0
	# Dist::Zilla::Plugin::PodWeaver
	echo dev-perl/Dist-Zilla-Plugin-PodWeaver
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PrereqSource
	echo dev-perl/Dist-Zilla
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Pod::Elemental
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Selectors
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Transformer::Nester
	echo dev-perl/Pod-Elemental
	# Pod::Weaver 3 ( 3.0.0 )
	echo \>=dev-perl/Pod-Weaver-3.0.0
	# Pod::Weaver::Role::Dialect
	echo dev-perl/Pod-Weaver
	# Pod::Weaver::Role::Section
	echo dev-perl/Pod-Weaver
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_test() {
	# File::Find
	# echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
