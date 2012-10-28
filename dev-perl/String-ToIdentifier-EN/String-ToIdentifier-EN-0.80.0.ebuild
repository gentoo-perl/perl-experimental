# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION='Convert Strings to English Program Identifiers'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
}
perl_meta_runtime() {
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# Lingua::EN::Inflect::Phrase 0.14 ( 0.140.0 )
	echo \>=dev-perl/Lingua-EN-Inflect-Phrase-0.140.0
	# Text::Unidecode 0.04 ( 0.40.0 )
	echo \>=dev-perl/Text-Unidecode-0.40.0
	# namespace::clean 0.20 ( 0.200.0 )
	echo \>=dev-perl/namespace-clean-0.200.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
