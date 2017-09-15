# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=GBARR
MODULE_VERSION=2.112991
inherit perl-module

DESCRIPTION='encode/decode numbers using Douglas Crockford'\''s Base32 Encoding'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Warn
	echo dev-perl/Test-Warn
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
