# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION='Inflect short English Phrases'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
perl_meta_runtime() {
	# Exporter 5.63 ( 5.630.0 )
	echo \>=virtual/perl-Exporter-5.630.0
	# Lingua::EN::Inflect 1.891 ( 1.891.0 )
	echo \>=dev-perl/Lingua-EN-Inflect-1.89.1
	# Lingua::EN::Inflect::Number 1.1 ( 1.100.0 )
	echo \>=dev-perl/Lingua-EN-Inflect-Number-1.100.0
	# Lingua::EN::Tagger 0.15 ( 0.150.0 )
	echo \>=dev-perl/Lingua-EN-Tagger-0.150.0
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
