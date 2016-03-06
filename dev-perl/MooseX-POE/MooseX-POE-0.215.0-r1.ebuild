# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=GETTY
MODULE_VERSION=0.215
inherit perl-module

DESCRIPTION='The Illicit Love Child of Moose and POE'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Moose 2.0002 ( 2.0.200 )
	echo \>=dev-perl/Moose-2.0.200
	# POE 1.310 ( 1.310.0 )
	echo \>=dev-perl/POE-1.310.0
}
perl_meta_test() {
	# Test::Fatal 0.003 ( 0.3.0 )
	echo \>=dev-perl/Test-Fatal-0.3.0
	# Test::More 0.90 ( 0.900.0 )
	echo \>=virtual/perl-Test-Simple-0.90
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
