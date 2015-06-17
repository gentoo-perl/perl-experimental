# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=1.000001
inherit perl-module

DESCRIPTION='Smooth over incompatible changes in Carp 1.25'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=dev-perl/Module-Build-0.36.00
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
