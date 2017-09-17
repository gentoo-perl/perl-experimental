# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=FAYLAND
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='Automatically sets repository URL from svn/svk/Git checkout for Dist::Zilla'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla 4.102340 ( 4.102.340 )
	echo \>=dev-perl/Dist-Zilla-4.102.340
}
perl_meta_test() {
	# Dist::Zilla::Tester 4.102340 ( 4.102.340 )
	echo \>=dev-perl/Dist-Zilla-4.102.340
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
