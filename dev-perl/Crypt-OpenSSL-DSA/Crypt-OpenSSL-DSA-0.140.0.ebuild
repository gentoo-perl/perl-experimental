# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TJMATHER
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION='Digital Signature Algorithm using OpenSSL'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_test(){
	# Test::More
	echo virtual/perl-Test-Simple
}
extra_deps(){
	# libssl and libcrypto required
	echo dev-libs/openssl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	test? ( $(perl_meta_test) )
	$(extra_deps)
"
RDEPEND="
	$(extra_deps)
"
SRC_TEST="do"
