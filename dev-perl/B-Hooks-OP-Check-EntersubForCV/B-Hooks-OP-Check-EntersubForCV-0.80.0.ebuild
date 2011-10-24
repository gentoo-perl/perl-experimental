# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_VERSION=0.08
MODULE_AUTHOR=ZEFRAM
inherit perl-module

DESCRIPTION="Invoke callbacks on construction of entersub OPs for certain CVs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
meta_runtime_dep() {
	# parent
	echo virtual/perl-parent
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# B::Utils
	echo dev-perl/B-Utils
	#comment B::Hooks::OP::Check 0.19 0.190.0
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
}
meta_build_dep() {
	# B::Utils
	echo dev-perl/B-Utils
	# B::Hooks::OP::Check 0.19 0.190.0
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# ExtUtils::MakeMaker 6.42 6.420.0
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
meta_configure_dep() {
	# B::Utils
	echo dev-perl/B-Utils
	# ExtUtils::Depends
	echo dev-perl/extutils-depends
	# B::Hooks::OP::Check 0.19 0.190
	echo \>=dev-perl/B-Hooks-OP-Check-0.190.0
	# ExtUtils-MakeMaker-6.42
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
RDEPEND="$(meta_runtime_dep)"
DEPEND="$(meta_configure_dep) $(meta_build_dep) $(meta_runtime_dep)"

SRC_TEST="do"
