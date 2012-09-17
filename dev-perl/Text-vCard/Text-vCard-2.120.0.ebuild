# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LLAP
MODULE_VERSION=2.12
inherit perl-module

DESCRIPTION='a package to edit and create a single vCard (RFC 2426)'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Encode
	echo virtual/perl-Encode
	# File::Slurp 9999.04 ( 9999.40.0 )
	echo \>=dev-perl/File-Slurp-9999.04
	# MIME::Base64 3.07 ( 3.70.0 )
	echo \>=virtual/perl-MIME-Base64-3.70.0
	# MIME::QuotedPrint 3.07 ( 3.70.0 )
	echo \>=virtual/perl-MIME-Base64-3.07
	# Text::vFile::asData 0.07 ( 0.70.0 )
	echo \>=dev-perl/Text-vFile-asData-0.70.0
	# base
	# echo virtual/perl-base
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# vars
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Digest
	echo virtual/perl-digest-base
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
SRC_TEST="do"
