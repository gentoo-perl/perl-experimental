# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.1.0
inherit perl-module

DESCRIPTION='Scrape an Overlay to produce a Distmap'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_build() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Gentoo::Overlay v1.0.5 ( 1.0.5 )
	echo \>=dev-perl/Gentoo-Overlay-1.0.5
	# Gentoo::Overlay::Group
	echo dev-perl/Gentoo-Overlay-Group
	# Gentoo::Perl::Distmap
	echo dev-perl/Gentoo-Perl-Distmap
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# XML::Smart
	echo dev-perl/XML-Smart
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
