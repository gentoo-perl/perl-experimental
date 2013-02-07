# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='Autoboxed wrappers for Native Perl datatypes '
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
	# Test::Exception 0.21 ( 0.210.0 )
	echo \>=dev-perl/Test-Exception-0.21
	# Test::More 0.89 ( 0.890.0 )
	echo \>=virtual/perl-Test-Simple-0.89
}
perl_meta_runtime() {
	# Moose 0.42 ( 0.420.0 )
	echo \>=dev-perl/Moose-0.420.0
	# Syntax::Keyword::Junction
	echo dev-perl/Syntax-Keyword-Junction
	# autobox 2.23 ( 2.230.0 )
	echo \>=dev-perl/autobox-2.230.0
	# parent
	echo virtual/perl-parent
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
