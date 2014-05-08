# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TMHARISH
MODULE_VERSION=1.78
inherit perl-module

DESCRIPTION='A smart, easy and powerful way to access or create XML from fiels, data and URLs.'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Object::MultiType 0.03 ( 0.30.0 )
	echo \>=dev-perl/Object-MultiType-0.03
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
