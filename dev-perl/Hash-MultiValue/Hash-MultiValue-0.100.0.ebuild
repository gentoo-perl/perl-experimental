# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Store multiple values per key"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mi_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_metayaml_configure() {
	# ExtUtils::MakeMaker
	echo '>=virtual/perl-ExtUtils-MakeMaker-6.42'
}
perl_metayaml_requires() {
	# Filter::Util::Call 0
	echo virtual/perl-Filter
	# perl 5.8.1
}
RDEPEND="$(perl_metayaml_requires)"
DEPEND="
	$(perl_mi_build)
	$(perl_metayaml_configure)
	$(perl_metayaml_requires)
"
SRC_TEST=do
