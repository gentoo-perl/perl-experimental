# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TMUELLER
MODULE_VERSION=0.04004
inherit perl-module

DESCRIPTION='throw HTTP-Errors as (Exception::Class-) Exceptions'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Exception::Class 1.29 ( 1.290.0 )
	echo \>=dev-perl/Exception-Class-1.290.0
	# HTTP::Status 5.817 ( 5.817.0 )
	echo \>=dev-perl/HTTP-Message-5.817.0
	# Scalar::Util 1.22 ( 1.220.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.220.0
	# Test::Exception 0.29 ( 0.290.0 )
	echo \>=dev-perl/Test-Exception-0.290.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::NoWarnings 1.04 ( 1.40.0 )
	echo \>=dev-perl/Test-NoWarnings-1.40.0
	# base
	# echo virtual/perl-base
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
