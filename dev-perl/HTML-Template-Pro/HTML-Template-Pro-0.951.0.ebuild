# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=VIY
MODULE_VERSION=0.9510
inherit perl-module

DESCRIPTION='Perl/XS module to use HTML Templates from CGI scripts'
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
	# File::Path 2 ( 2.0.0 )
	echo \>=virtual/perl-File-Path-2.0
	# File::Spec
	echo virtual/perl-File-Spec
	# JSON 2 ( 2.0.0 )
	echo \>=dev-perl/JSON-2.0.0
	# Test::More
	echo virtual/perl-Test-Simple
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
