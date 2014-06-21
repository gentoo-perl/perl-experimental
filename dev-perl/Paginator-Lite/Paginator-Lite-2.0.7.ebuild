# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BLABOS
MODULE_VERSION=2.000007
inherit perl-module

DESCRIPTION='A simple paginator'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.48 ( 6.480.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.480.0
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Moo 1.000003 ( 1.0.3 )
	echo \>=dev-perl/Moo-1.0.3
	# perl 5.008008 ( 5.8.8 )
	echo \>=dev-lang/perl-5.8.8
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
PERL_RM_FILES=(
	t/boilerplate.t
	t/perlcritic.t
	t/pod.t
	t/pod-coverage.t
)
SRC_TEST="do parallel"
