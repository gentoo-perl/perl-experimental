# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=v0.1.2
inherit perl-module

DESCRIPTION='A unique identifier for any object'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.340201 ( 0.340.201 )
	echo \>=dev-perl/Module-Build-0.34.02.01
}
perl_meta_build() {
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# version 0.77 ( 0.770.0 )
	echo \>=virtual/perl-version-0.77
}
perl_meta_runtime() {
	# Hash::FieldHash 0.10 ( 0.100.0 )
	echo \>=dev-perl/Hash-FieldHash-0.100.0
	# Sub::Name 0.03 ( 0.30.0 )
	echo \>=dev-perl/Sub-Name-0.03
	# perl v5.8.8 ( 5.8.8 )
	echo \>=dev-lang/perl-5.8.8
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
