# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ACOBURN
MODULE_VERSION=0.23
inherit perl-module

DESCRIPTION='Part-of-speech tagger for English natural language processing.'
LICENSE=" GPL-3"
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
	# File::Spec 0.84 ( 0.840.0 )
	echo \>=virtual/perl-File-Spec-0.84
	# HTML::Parser 3.45 ( 3.450.0 )
	echo \>=dev-perl/HTML-Parser-3.450.0
	# HTML::Tagset 3.20 ( 3.200.0 )
	echo \>=dev-perl/HTML-Tagset-3.200.0
	# Lingua::Stem 0.81 ( 0.810.0 )
	echo \>=dev-perl/Lingua-Stem-0.810.0
	# Memoize 1.01 ( 1.10.0 )
	echo \>=virtual/perl-Memoize-1.01
	# Memoize::ExpireLRU 0.55 ( 0.550.0 )
	echo \>=dev-perl/Memoize-ExpireLRU-0.550.0
	# Storable 2.10 ( 2.100.0 )
	echo \>=virtual/perl-Storable-2.10
	# perl 5.008001 ( 5.8.1 )
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
