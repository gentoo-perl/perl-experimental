# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=GETTY
MODULE_VERSION=0.91
inherit perl-module

DESCRIPTION='The patriarch of IRC Bots'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# MooseX::Aliases 0.10 ( 0.100.0 )
	echo \>=dev-perl/MooseX-Aliases-0.100.0
	# MooseX::Declare 0.34 ( 0.340.0 )
	echo \>=dev-perl/MooseX-Declare-0.340.0
	# MooseX::Getopt 0.37 ( 0.370.0 )
	echo \>=dev-perl/MooseX-Getopt-0.370.0
	# MooseX::LogDispatch 1.2002 ( 1.200.200 )
	echo \>=dev-perl/MooseX-LogDispatch-1.200.200
	# MooseX::POE 0.214 ( 0.214.0 )
	echo \>=dev-perl/MooseX-POE-0.214.0
	# MooseX::SimpleConfig 0.09 ( 0.90.0 )
	echo \>=dev-perl/MooseX-SimpleConfig-0.90.0
	# POE::Component::IRC 6.64 ( 6.640.0 )
	echo \>=dev-perl/POE-Component-IRC-6.640.0
	# Sub::Identify 0.04 ( 0.40.0 )
	echo \>=dev-perl/Sub-Identify-0.40.0
	# aliased 0.30 ( 0.300.0 )
	echo \>=dev-perl/aliased-0.300.0
	# namespace::autoclean 0.12 ( 0.120.0 )
	echo \>=dev-perl/namespace-autoclean-0.120.0
}
perl_meta_test() {
	# Test::Deep 0.103 ( 0.103.0 )
	echo \>=dev-perl/Test-Deep-0.103.0
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
