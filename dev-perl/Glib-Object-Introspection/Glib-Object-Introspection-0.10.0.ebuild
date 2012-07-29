# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=XAOC
MODULE_VERSION=0.010
inherit perl-module

DESCRIPTION='Dynamically create Perl language bindings'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
extra_deps() {
	echo \>=dev-libs/gobject-introspection-1.0
}
perl_meta_configure() {
	# ExtUtils::Depends 0.3 ( 0.300.0 )
	echo \>=dev-perl/extutils-depends-0.300.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# ExtUtils::PkgConfig 1 ( 1.0.0 )
	echo \>=dev-perl/extutils-pkgconfig-1.0.0
	# Glib 1.24 ( 1.240.0 )
	echo \>=dev-perl/glib-perl-1.240.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# ExtUtils::Depends 0.3 ( 0.300.0 )
	echo \>=dev-perl/extutils-depends-0.300.0
	# Glib 1.24 ( 1.240.0 )
	echo \>=dev-perl/glib-perl-1.240.0
}
DEPEND="
	$(extra_deps)
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(extra_deps)
	$(perl_meta_runtime)
"
SRC_TEST="do"
