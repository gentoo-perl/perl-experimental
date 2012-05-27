# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LAMMEL
MODULE_VERSION=0.45
inherit perl-module

DESCRIPTION='A Logging Role for Moose based on Log::Log4perl'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.57 ( 6.570.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.570.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.57 ( 6.570.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.570.0
	# IO::Scalar
	echo dev-perl/IO-stringy
	# Moose 0.65 ( 0.650.0 )
	echo \>=dev-perl/Moose-0.650
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Any::Moose 0.12 ( 0.120.0 )
	echo \>=dev-perl/Any-Moose-0.120.0
	# Log::Log4perl 1.13 ( 1.130.0 )
	echo \>=dev-perl/Log-Log4perl-1.13
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
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
