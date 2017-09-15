# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DAKKAR
MODULE_VERSION=2.02
inherit perl-module

DESCRIPTION='an XPath implementation for the PDOM'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Carp
	echo virtual/perl-Carp
	# PPI
	echo dev-perl/PPI
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Tree::XPathEngine
	echo dev-perl/Tree-XPathEngine
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Test::Most
	echo dev-perl/Test-Most
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
