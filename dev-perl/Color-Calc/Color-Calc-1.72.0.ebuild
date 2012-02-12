# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=CFAERBER
MODULE_VERSION=1.072
inherit perl-module

DESCRIPTION='Simple calculations with RGB colors.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=virtual/perl-Module-Build-0.380.0
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
}
perl_meta_runtime() {
	# Graphics::ColorNames 2.1 ( 2.100.0 )
	echo \>=dev-perl/Graphics-ColorNames-2.100.0
	# Graphics::ColorNames::HTML
	echo dev-perl/Graphics-ColorNames
	# Graphics::ColorNames::WWW 0.01 ( 0.10.0 )
	echo \>=dev-perl/Graphics-ColorNames-WWW-0.10.0
	# Params::Validate 0.75 ( 0.750.0 )
	echo \>=dev-perl/Params-Validate-0.75
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
