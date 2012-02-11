# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION='hashed passwords/passphrases as objects'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build
	echo virtual/perl-Module-Build
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_build() {
	# MIME::Base64 2.21 ( 2.210.0 )
	echo \>=virtual/perl-MIME-Base64-2.21
	# Module::Build
	echo virtual/perl-Module-Build
	# Test::More
	echo virtual/perl-Test-Simple
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_runtime() {
	# Authen::DecHpwd 2.003 ( 2.3.0 )
	echo \>=dev-perl/Authen-DecHpwd-2.3.0
	# Carp
	echo dev-lang/perl
	# Crypt::DES
	echo dev-perl/Crypt-DES
	# Crypt::Eksblowfish::Bcrypt 0.008 ( 0.8.0 )
	echo \>=dev-perl/Crypt-Eksblowfish-0.8.0
	# Crypt::Eksblowfish::Uklblowfish 0.008 ( 0.8.0 )
	echo \>=dev-perl/Crypt-Eksblowfish-0.8.0
	# Crypt::MySQL 0.03 ( 0.30.0 )
	echo \>=dev-perl/Crypt-MySQL-0.30.0
	# Crypt::PasswdMD5 1.0 ( 1.0.0 )
	echo \>=dev-perl/Crypt-PasswdMD5-1.0.0
	# Crypt::UnixCrypt_XS 0.08 ( 0.80.0 )
	echo \>=dev-perl/Crypt-UnixCrypt_XS-0.80.0
	# Data::Entropy::Algorithms
	echo dev-perl/Data-Entropy
	# Digest 1.00 ( 1.0.0 )
	echo \>=virtual/perl-digest-base-1.0.0
	# Digest::MD4 1.2 ( 1.200.0 )
	echo \>=dev-perl/Digest-MD4-1.200.0
	# Digest::MD5 1.9953 ( 1.995.300 )
	echo \>=virtual/perl-Digest-MD5-1.9953
	# Digest::SHA
	echo virtual/perl-Digest-SHA
	# MIME::Base64 2.21 ( 2.210.0 )
	echo \>=virtual/perl-MIME-Base64-2.21
	# Module::Runtime 0.011 ( 0.11.0 )
	echo \>=dev-perl/Module-Runtime-0.11.0
	# Params::Classify
	echo dev-perl/Params-Classify
	# parent
	echo virtual/perl-parent
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
