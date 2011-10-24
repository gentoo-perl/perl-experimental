# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.5003
inherit perl-module

DESCRIPTION="get, unpack, build and install modules from CPAN"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
#KEYWORDS=""
KEYWORDS="~amd64 ~x86"
IUSE=""

meta_build_deps() {
	# ExtUtils::MakeMaker
	echo "virtual/perl-ExtUtils-MakeMaker"
}
meta_configure_deps() {
	# ExtUtils::MakeMaker
	echo "virtual/perl-ExtUtils-MakeMaker"
}
meta_run_deps() {
	# ExtUtils::Install 1.46 ( 1.460.0 )
	echo ">=virtual/perl-ExtUtils-Install-1.46"
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo ">=virtual/perl-ExtUtils-MakeMaker-6.31"
	# Module::Build 0.36 ( 0.360.0 )
	echo ">=virtual/perl-Module-Build-0.36.0"
}
RDEPEND="$(meta_run_deps)"
DEPEND="
	$(meta_run_deps)
	$(meta_build_deps)
	$(meta_configure_deps)
"
SRC_TEST="do"
