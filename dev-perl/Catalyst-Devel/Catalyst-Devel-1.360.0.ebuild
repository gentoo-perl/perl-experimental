# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.36
inherit perl-module

DESCRIPTION='Catalyst Development Tools'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::Fatal 0.003 ( 0.3.0 )
	echo \>=dev-perl/Test-Fatal-0.003
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
perl_meta_runtime() {
	# Catalyst 5.90001 ( 5.900.10 )
	echo \>=dev-perl/Catalyst-Runtime-5.900.10
	# Catalyst::Action::RenderView 0.10 ( 0.100.0 )
	echo \>=dev-perl/Catalyst-Action-RenderView-0.100.0
	# Catalyst::Plugin::ConfigLoader 0.30 ( 0.300.0 )
	echo \>=dev-perl/Catalyst-Plugin-ConfigLoader-0.300.0
	# Catalyst::Plugin::Static::Simple 0.28 ( 0.280.0 )
	echo \>=dev-perl/Catalyst-Plugin-Static-Simple-0.280.0
	# Config::General 2.42 ( 2.420.0 )
	echo \>=dev-perl/config-general-2.42
	# File::ChangeNotify 0.07 ( 0.70.0 )
	echo \>=dev-perl/File-ChangeNotify-0.70.0
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::ShareDir
	echo dev-perl/File-ShareDir
	# Module::Install 1.02 ( 1.20.0 )
	echo \>=dev-perl/Module-Install-1.20.0
	# Moose
	echo dev-perl/Moose
	# MooseX::Emulate::Class::Accessor::Fast
	echo dev-perl/MooseX-Emulate-Class-Accessor-Fast
	# Path::Class 0.09 ( 0.90.0 )
	echo \>=dev-perl/Path-Class-0.90
	# Template 2.14 ( 2.140.0 )
	echo \>=dev-perl/Template-Toolkit-2.14
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# namespace::clean
	echo dev-perl/namespace-clean
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
