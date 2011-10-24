# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BRICAS
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="Read and write Changes files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
meta_build_deps() {
	# ExtUtils::MakeMaker 6.42 6.420.0
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::More
	echo virtual/perl-Test-Simple
}
meta_configure_deps() {
	# ExtUtils::MakeMaker 6.42 6.420.0
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
meta_runtime_deps() {
	# Text::Wrap
	echo virtual/perl-Text-Tabs+Wrap
	# perl v5.10.0 5.10.0
	echo \>=dev-lang/perl-5.10.0
	# version 0.79 0.790
	echo \>=virtual/perl-version-0.79
}
DEPEND="$(meta_build_deps) $(meta_configure_deps) $(meta_runtime_deps)"
RDEPEND="$(meta_runtime_deps)"
SRC_TEST="do"
