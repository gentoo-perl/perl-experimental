# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=TSCH
MODULE_VERSION=0.008
inherit perl-module
inherit virtualx

DESCRIPTION='Perl interface to the 3.x series of the gtk+ toolkit'
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
extra_depend() {
	echo x11-libs/gtk+:3
}
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Cairo::GObject 1.000 ( 1.0.0 )
	echo \>=dev-perl/Cairo-GObject-1.0.0
	# Glib::Object::Introspection 0.012 ( 0.12.0 )
	echo \>=dev-perl/Glib-Object-Introspection-0.12.0
}
DEPEND="
	$(extra_depend)
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(extra_depend)
	$(perl_meta_runtime)
"
SRC_TEST="do"
src_test() {
	Xemake -j1 test || die
}
