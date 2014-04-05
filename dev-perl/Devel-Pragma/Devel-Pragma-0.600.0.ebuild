# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.60
inherit perl-module

DESCRIPTION='helper functions for developers of lexical pragmas'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# B::Hooks::OP::Annotation 0.44 ( 0.440.0 )
	echo \>=dev-perl/B-Hooks-OP-Annotation-0.440.0
	# B::Hooks::OP::Check 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# ExtUtils::Depends 0.302 ( 0.302.0 )
	echo \>=dev-perl/extutils-depends-0.302.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# B::Hooks::OP::Annotation 0.44 ( 0.440.0 )
	echo \>=dev-perl/B-Hooks-OP-Annotation-0.440.0
	# B::Hooks::OP::Check 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# Lexical::SealRequireHints 0.007 ( 0.7.0 )
	echo \>=dev-perl/Lexical-SealRequireHints-0.7.0
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
