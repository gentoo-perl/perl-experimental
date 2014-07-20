# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ABELTJE
MODULE_VERSION=0.020
inherit perl-module

DESCRIPTION="Interface to an iterator that checks a website"
HOMEPAGE="http://backpan.perl.org/authors/id/A/AB/ABELTJE/"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
SRC_TEST="do"

perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	echo dev-perl/WWW-RobotRules
	echo virtual/perl-Time-HiRes
	echo dev-perl/libwww-perl
	echo \>=dev-perl/Template-Toolkit-2.0.0
	echo \>=dev-perl/WWW-Mechanize-1.200.0
	echo \>=virtual/perl-Storable-2.60.0
}
perl_meta_test() {
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
