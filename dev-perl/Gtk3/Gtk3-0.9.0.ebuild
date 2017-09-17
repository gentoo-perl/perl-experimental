# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TSCH
MODULE_VERSION=0.009
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
	# Carp
	echo dev-lang/perl
	# Exporter
	echo virtual/perl-Exporter
	# Glib::Object::Introspection 0.014 ( 0.14.0 )
	echo \>=dev-perl/Glib-Object-Introspection-0.14.0
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
