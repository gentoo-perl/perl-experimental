# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LAMMEL
MODULE_VERSION=0.44
inherit perl-module

DESCRIPTION='A Logging Role for Moose based on Log::Log4perl'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Any::Moose 0.12 ( 0.120.0 )
	echo \>=dev-perl/Any-Moose-0.120.0
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# IO::Scalar
	echo dev-perl/IO-stringy
	# Log::Log4perl 1.13 ( 1.130.0 )
	echo \>=dev-perl/Log-Log4perl-1.13
	# Moose 0.65 ( 0.650.0 )
	echo \>=dev-perl/Moose-0.650
	# Test::More
	echo virtual/perl-Test-Simple
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
