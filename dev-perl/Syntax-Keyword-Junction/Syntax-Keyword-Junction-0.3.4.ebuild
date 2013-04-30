# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FREW
MODULE_VERSION=0.003004
inherit perl-module

DESCRIPTION='Perl6 style Junction operators in Perl5'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Sub::Exporter::Progressive 0.001006 ( 0.1.6 )
	echo \>=dev-perl/Sub-Exporter-Progressive-0.1.6
	# Test::More
	echo virtual/perl-Test-Simple
	# syntax
	echo dev-perl/syntax
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
