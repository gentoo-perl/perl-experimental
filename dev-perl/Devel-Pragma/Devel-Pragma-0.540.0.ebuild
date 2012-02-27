# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.54
inherit perl-module

DESCRIPTION='helper functions for developers of lexical pragmas'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# B::Hooks::OP::Annotation 0.43 ( 0.430.0 )
	echo \>=dev-perl/B-Hooks-OP-Annotation-0.430.0
	# B::Hooks::OP::Check 0.18 ( 0.180.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.180.0
	# ExtUtils::Depends 0.302 ( 0.302.0 )
	echo \>=dev-perl/extutils-depends-0.302
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# B::Hooks::EndOfScope 0.09 ( 0.90.0 )
	echo \>=dev-perl/B-Hooks-EndOfScope-0.90.0
	# B::Hooks::OP::Annotation 0.43 ( 0.430.0 )
	echo \>=dev-perl/B-Hooks-OP-Annotation-0.430.0
	# B::Hooks::OP::Check 0.18 ( 0.180.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.180.0
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
