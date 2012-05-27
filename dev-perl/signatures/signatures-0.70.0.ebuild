# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KAPPA
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='subroutine signatures with no source filter'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# B::Hooks::OP::Check 0.18 ( 0.180.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.180.0
	# B::Hooks::OP::PPAddr 0.03 ( 0.30.0 )
	echo \>=dev-perl/B-Hooks-OP-PPAddr-0.30.0
	# B::Hooks::Parser 0.07 ( 0.70.0 )
	echo \>=dev-perl/B-Hooks-Parser-0.70.0
	# ExtUtils::Depends 0.302 ( 0.302.0 )
	echo \>=dev-perl/extutils-depends-0.302.0
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# B::Hooks::OP::Check 0.17 ( 0.170.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.170.0
	# B::Hooks::OP::PPAddr
	echo dev-perl/B-Hooks-OP-PPAddr
	# B::Hooks::Parser 0.07 ( 0.70.0 )
	echo \>=dev-perl/B-Hooks-Parser-0.70.0
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_runtime() {
	# B::Hooks::EndOfScope 0.08 ( 0.80.0 )
	echo \>=dev-perl/B-Hooks-EndOfScope-0.80.0
	# B::Hooks::OP::Check 0.17 ( 0.170.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.170.0
	# B::Hooks::OP::PPAddr
	echo dev-perl/B-Hooks-OP-PPAddr
	# B::Hooks::Parser 0.07 ( 0.70.0 )
	echo \>=dev-perl/B-Hooks-Parser-0.70.0
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
