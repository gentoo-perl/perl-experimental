# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=WREIS
MODULE_VERSION=0.00012
inherit perl-module

DESCRIPTION='Automatically encode column values'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+md5 +sha +blowfish +gpg"
perl_feature_md5() {
	echo virtual/perl-digest-base
	echo virtual/perl-Digest-MD5
}
perl_feature_sha(){
	echo virtual/perl-digest-base
	echo virtual/perl-Digest-SHA
}
perl_feature_blowfish(){
	echo dev-perl/Crypt-Eksblowfish
}
perl_feature_gpg(){
	echo dev-perl/Crypt-OpenPGP
	echo dev-perl/Crypt-CAST5_PP
}
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# DBD::SQLite
	echo dev-perl/DBD-SQLite
	# Dir::Self
	echo dev-perl/Dir-Self
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# DBIx::Class 0.06002 ( 0.60.20 )
	echo \>=dev-perl/DBIx-Class-0.60.20
	# Encode
	echo virtual/perl-Encode
	# Sub::Name 0.04 ( 0.40.0 )
	echo \>=dev-perl/Sub-Name-0.40.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
	md5? ( $(perl_feature_md5) )
	sha? ( $(perl_feature_sha) )
	blowfish? ( $(perl_feature_blowfish) )
	gpg? ( $(perl_feature_gpg) )
"
SRC_TEST="do"
