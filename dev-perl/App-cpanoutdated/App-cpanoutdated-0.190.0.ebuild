# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.19

inherit perl-module

DESCRIPTION="detect outdated CPAN modules in your environment"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

meta_build_dep() {
	# ExtUtils::MakeMaker
	echo 'virtual/perl-ExtUtils-MakeMaker';
}
meta_configure_dep() {
	# ExtUtils::MakeMaker
	echo 'virtual/perl-ExtUtils-MakeMaker';
}
meta_runtime_dep() {
	# CPAN::DistnameInfo 0.1 ( 0.100.0 )
	echo '>=dev-perl/CPAN-DistnameInfo-0.100.0'
	# ExtUtils::MakeMaker 6.56 ( 6.560.0 )
	echo '>=virtual/perl-ExtUtils-MakeMaker-6.56'
	# IO::Zlib
	echo 'virtual/perl-IO-Zlib'
	# LWP
	echo 'dev-perl/libwww-perl'
	# local::lib 1.006008 ( 1.6.8 )
	echo '>=dev-perl/local-lib-1.6.8'
	# perl 5.008001 ( 5.8.1 )
	echo '>=dev-lang/perl-5.8.1'
	# version
	echo 'virtual/perl-version'
}
RDEPEND="$(meta_runtime_dep)"
DEPENDS="$(meta_configure_dep) $(meta_build_dep) $(meta_runtime_dep)"
SRC_TEST="do"
