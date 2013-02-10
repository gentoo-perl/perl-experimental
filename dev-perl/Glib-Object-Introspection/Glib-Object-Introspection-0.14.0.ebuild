# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=XAOC
MODULE_VERSION=0.014
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
	# ExtUtils::PkgConfig 1 ( 1.0.0 )
	echo \>=dev-perl/extutils-pkgconfig-1.0.0
	# Glib 1.28 ( 1.280.0 )
	echo \>=dev-perl/glib-perl-1.280.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Glib 1.28 ( 1.280.0 )
	echo \>=dev-perl/glib-perl-1.280.0
}
DEPEND="
	$(extra_deps)
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
