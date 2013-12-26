# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=HAARG
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION='Provides function returning the equivalent of ${^GLOBAL_PHASE} eq '\''DESTRUCT'\'' for older perls.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::CBuilder 0.27 ( 0.270.0 )
	echo \>=virtual/perl-ExtUtils-CBuilder-0.270.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Sub::Exporter::Progressive 0.001011 ( 0.1.11 )
	echo \>=dev-perl/Sub-Exporter-Progressive-0.1.11
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
