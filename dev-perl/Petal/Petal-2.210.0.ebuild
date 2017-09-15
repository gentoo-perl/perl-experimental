# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=NINE
MODULE_VERSION=2.21
inherit perl-module

DESCRIPTION='Perl Template Attribute Language - TAL for Perl!'
LICENSE="|| ( Artistic GPL-2 )"
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
	# Digest::MD5
	echo virtual/perl-Digest-MD5
	# MKDoc::XML 0.72 ( 0.720.0 )
	echo \>=dev-perl/MKDoc-XML-0.72
	# Scalar::Util 1.07 ( 1.70.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.70.0
	# Test::Harness 2.00 ( 2.0.0 )
	echo \>=virtual/perl-Test-Harness-2.00
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
