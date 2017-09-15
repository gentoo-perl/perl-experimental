# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BAREFOOT
MODULE_VERSION=20130505
inherit perl-module

DESCRIPTION='method and function declarations with signatures and no source filter'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.26 ( 0.260.0 )
	echo \>=dev-perl/Module-Build-0.26
}
perl_meta_build() {
	# Module::Build 0.26 ( 0.260.0 )
	echo \>=dev-perl/Module-Build-0.26
	# Test::Builder 0.82 ( 0.820.0 )
	echo \>=virtual/perl-Test-Simple-0.82
	# Test::Exception 0.29 ( 0.290.0 )
	echo \>=dev-perl/Test-Exception-0.290.0
	# Test::More 0.82 ( 0.820.0 )
	echo \>=virtual/perl-Test-Simple-0.82
	# Test::Warn 0.10 ( 0.100.0 )
	echo \>=dev-perl/Test-Warn-0.100.0
}
perl_meta_runtime() {
	# Any::Moose 0.11 ( 0.110.0 )
	echo \>=dev-perl/Any-Moose-0.110.0
	# Const::Fast 0.006 ( 0.6.0 )
	echo \>=dev-perl/Const-Fast-0.6.0
	# Data::Alias 1.08 ( 1.80.0 )
	echo \>=dev-perl/Data-Alias-1.80.0
	# Devel::Declare 0.006002 ( 0.6.2 )
	echo \>=dev-perl/Devel-Declare-0.6.2
	# Devel::Declare::MethodInstaller::Simple 0.006002 ( 0.6.2 )
	echo \>=dev-perl/Devel-Declare-0.6.2
	# Devel::Pragma 0.40 ( 0.400.0 )
	echo \>=dev-perl/Devel-Pragma-0.400.0
	# Mouse 0.64 ( 0.640.0 )
	echo \>=dev-perl/Mouse-0.640.0
	# PPI 1.203 ( 1.203.0 )
	echo \>=dev-perl/PPI-1.203.0
	# Sub::Name 0.03 ( 0.30.0 )
	echo \>=dev-perl/Sub-Name-0.30.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
