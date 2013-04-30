# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.003
inherit perl-module

DESCRIPTION='Functions for accessing a hashes internal iterator.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.40 ( 0.400.0 )
	echo \>=virtual/perl-Module-Build-0.400.0
}
perl_meta_build() {
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# Fennec 1.012 ( 1.12.0 )
	echo \>=dev-perl/Fennec-1.12.0
}
perl_meta_runtime() {
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
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
