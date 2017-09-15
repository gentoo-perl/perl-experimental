# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=CWEST
MODULE_VERSION=1.01
inherit perl-module

DESCRIPTION='Pid File Manipulation'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_runtime() {
	# Class::Accessor::Fast 0.19 ( 0.190.0 )
	echo \>=dev-perl/Class-Accessor-0.190.0
}
perl_meta_test() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
DEPEND="
	$(perl_meta_runtime)
	$(perl_meta_configure)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
