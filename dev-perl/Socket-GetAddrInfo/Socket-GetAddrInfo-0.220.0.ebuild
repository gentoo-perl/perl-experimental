# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.22
inherit perl-module

DESCRIPTION='address-family independent name resolving functions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# ExtUtils::CChecker 0.06 ( 0.60.0 )
	echo \>=dev-perl/ExtUtils-CChecker-0.60.0
	# Module::Build
	echo virtual/perl-Module-Build
}
perl_meta_build() {
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# ExtUtils::CChecker 0.06 ( 0.60.0 )
	echo \>=dev-perl/ExtUtils-CChecker-0.60.0
	# Module::Build
	echo virtual/perl-Module-Build
	# Module::Build::Compat
	echo virtual/perl-Module-Build
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# Socket 2.001_001 ( 2.1.1_rc )
	echo \>=virtual/perl-Socket-2.1.1_rc
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
