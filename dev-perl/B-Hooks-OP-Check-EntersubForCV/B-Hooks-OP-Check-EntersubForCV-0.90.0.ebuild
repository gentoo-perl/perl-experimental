# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='Invoke callbacks on construction of entersub OPs for certain CVs'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# B::Hooks::OP::Check 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# B::Utils 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Utils-0.190.0
	# ExtUtils::Depends
	echo dev-perl/extutils-depends
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# B::Hooks::OP::Check 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# B::Utils 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Utils-0.190.0
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_runtime() {
	# B::Hooks::OP::Check 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# B::Utils 0.19 ( 0.190.0 )
	echo \>=dev-perl/B-Utils-0.190.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# parent
	echo virtual/perl-parent
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
