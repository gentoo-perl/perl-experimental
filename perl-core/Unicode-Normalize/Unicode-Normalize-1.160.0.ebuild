# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SADAHIRO
MODULE_VERSION=1.16
inherit perl-module

DESCRIPTION='Unicode Normalization Forms'
LICENSE=" || ( Artistic GPL-2 )"
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
	# Carp
	echo dev-lang/perl
	# DynaLoader
	echo dev-lang/perl
	# Exporter
	echo virtual/perl-Exporter
	# File::Copy
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# bytes
	echo dev-lang/perl
	# constant
	# echo virtual/perl-constant
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
