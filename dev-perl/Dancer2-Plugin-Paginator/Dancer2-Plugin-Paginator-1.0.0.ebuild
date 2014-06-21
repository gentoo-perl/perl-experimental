# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BLABOS
MODULE_VERSION=1.000000
inherit perl-module

DESCRIPTION='Dancer2 plugin for Paginator::Lite'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=(
	"${FILESDIR}/Dancer2-0.08.patch"
)

perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_build() {
	# Dancer2::Test
	echo dev-perl/Dancer2
	# JSON
	echo dev-perl/JSON
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Dancer2
	echo dev-perl/Dancer2
	# Paginator::Lite 2.000007 ( 2.0.7 )
	echo \>=dev-perl/Paginator-Lite-2.0.7
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
SRC_TEST="do parallel"
