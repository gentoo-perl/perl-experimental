# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.112
inherit perl-module

DESCRIPTION='Exporting done right'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.40 ( 0.400.0 )
	echo \>=dev-perl/Module-Build-0.400.0
}
perl_meta_build() {
	# Fennec::Lite 0.004 ( 0.4.0 )
	echo \>=dev-perl/Fennec-Lite-0.4.0
	# Test::Exception 0.29 ( 0.290.0 )
	echo \>=dev-perl/Test-Exception-0.290.0
	# Test::Simple 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Meta::Builder 0.003 ( 0.3.0 )
	echo \>=dev-perl/Meta-Builder-0.3.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# aliased
	echo dev-perl/aliased
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
