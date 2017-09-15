# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.010
inherit perl-module

DESCRIPTION='Encrypted, expiring, compressed, serialized session data with integrity'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.17 ( 6.170.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.17
}
perl_meta_runtime() {
	# Carp
	echo virtual/perl-Carp
	# Crypt::CBC
	echo dev-perl/Crypt-CBC
	# Crypt::Rijndael
	echo dev-perl/Crypt-Rijndael
	# Crypt::URandom
	echo dev-perl/Crypt-URandom
	# Digest::SHA
	echo virtual/perl-Digest-SHA
	# MIME::Base64 3.12 ( 3.120.0 )
	echo \>=virtual/perl-MIME-Base64-3.120.0
	# Math::Random::ISAAC::XS
	echo dev-perl/Math-Random-ISAAC-XS
	# Moo
	echo dev-perl/Moo
	# MooX::Types::MooseLike::Base 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooX-Types-MooseLike-0.160.0
	# Sereal::Decoder
	echo dev-perl/Sereal-Decoder
	# Sereal::Encoder
	echo dev-perl/Sereal-Encoder
	# String::Compare::ConstantTime
	echo dev-perl/String-Compare-ConstantTime
	# namespace::clean
	echo dev-perl/namespace-clean
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Test::Tolerant
	echo dev-perl/Number-Tolerant
	# version
	echo virtual/perl-version
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
