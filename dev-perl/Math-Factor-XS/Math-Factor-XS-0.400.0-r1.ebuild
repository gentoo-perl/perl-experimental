# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KRYDE
MODULE_VERSION=0.40
inherit perl-module

DESCRIPTION='Factorize numbers and calculate matching multiplications'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.40 ( 0.400.0 )
	echo \>=dev-perl/Module-Build-0.400.0
}
perl_meta_build() {
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Exporter
	echo virtual/perl-Exporter
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Params::Validate
	echo dev-perl/Params-Validate
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# XSLoader
	echo virtual/perl-XSLoader
	# boolean
	echo dev-perl/boolean
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
