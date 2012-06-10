# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LLAP
MODULE_VERSION=2.11
inherit perl-module

DESCRIPTION='Module for parsing and creating vCards (RFC 2426) address'
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
	# File::Slurp 9999.04 ( 9999.40.0 )
	echo \>=dev-perl/File-Slurp-9999.04
	# MIME::QuotedPrint 3.07 ( 3.70.0 )
	echo \>=virtual/perl-MIME-Base64-3.07
	# Test::More 0.1 ( 0.100.0 )
	echo \>=virtual/perl-Test-Simple-0.10
	# Text::vFile::asData 0.07 ( 0.70.0 )
	echo \>=dev-perl/Text-vFile-asData-0.70.0
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
