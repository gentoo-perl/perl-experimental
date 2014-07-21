# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=NLNETLABS
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION='DNSSEC extensions to Net::DNS'
LICENSE=" MIT"
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
perl_meta_runtime() {
	# Crypt::OpenSSL::Bignum 0.03 ( 0.30.0 )
	echo \>=dev-perl/Crypt-OpenSSL-Bignum-0.30.0
	# Crypt::OpenSSL::DSA 0.1 ( 0.100.0 )
	echo \>=dev-perl/Crypt-OpenSSL-DSA-0.100.0
	# Crypt::OpenSSL::RSA 0.19 ( 0.190.0 )
	echo \>=dev-perl/Crypt-OpenSSL-RSA-0.190.0
	# Digest::BubbleBabble 0.01 ( 0.10.0 )
	echo \>=dev-perl/digest-bubblebabble-0.10.0
	# Digest::SHA 5.23 ( 5.230.0 )
	echo \>=virtual/perl-Digest-SHA-5.230.0
	# File::Basename
	echo dev-lang/perl
	# MIME::Base32
	# echo perl-core/MIME-Base32
	# MIME::Base64
	echo virtual/perl-MIME-Base64
	# Math::BigInt
	echo virtual/perl-Math-BigInt
	# Net::DNS 0.69 ( 0.690.0 )
	echo \>=dev-perl/Net-DNS-0.690.0
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.470.0
	# Time::Local
	echo virtual/perl-Time-Local
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test(){
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.470.0
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
