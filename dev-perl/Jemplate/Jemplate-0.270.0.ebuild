# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=INGY
MODULE_VERSION=0.27
inherit perl-module

DESCRIPTION='JavaScript Templating with Template Toolkit'
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
}
perl_meta_runtime() {
	# File::Find::Rule 0.30 ( 0.300.0 )
	echo \>=dev-perl/File-Find-Rule-0.300.0
	# Filter::Util::Call
	echo virtual/perl-Filter
	# Template 2.14 ( 2.140.0 )
	echo \>=dev-perl/Template-Toolkit-2.140.0
	# perl v5.6.1 ( 5.6.1 )
	echo \>=dev-lang/perl-5.6.1
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
