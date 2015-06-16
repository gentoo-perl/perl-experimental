# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CREAMYG
MODULE_VERSION=0.315
inherit perl-module

DESCRIPTION='Search engine library.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=dev-perl/Module-Build-0.36
}
perl_meta_build() {
	# Devel::PPPort 3.13 ( 3.130.0 )
	echo \>=virtual/perl-Devel-PPPort-3.130.0
	# ExtUtils::CBuilder 0.18 ( 0.180.0 )
	echo \>=virtual/perl-ExtUtils-CBuilder-0.18
	# ExtUtils::ParseXS 2.16 ( 2.160.0 )
	echo \>=virtual/perl-ExtUtils-ParseXS-2.16
}
perl_meta_runtime() {
	# JSON::XS 1.53 ( 1.530.0 )
	echo \>=dev-perl/JSON-XS-1.530.0
	# Lingua::Stem::Snowball 0.952 ( 0.952.0 )
	echo \>=dev-perl/Lingua-Stem-Snowball-0.952.0
	# Lingua::StopWords 0.09 ( 0.90.0 )
	echo \>=dev-perl/Lingua-StopWords-0.09
	# Parse::RecDescent
	echo dev-perl/Parse-RecDescent
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"

kino_api_changed() {
	elog "This package ( $P ) includes a new API incompatible with <= 0.20."
	elog "If you need the old interface, see dev-perl/KinoSearch1"
}

pkg_postinst() {
	kino_api_changed;
}

pkg_pretend() {
	kino_api_changed;
	default
}
