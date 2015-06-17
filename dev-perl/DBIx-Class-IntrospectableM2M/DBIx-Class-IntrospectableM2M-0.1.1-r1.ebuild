# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GRODITI
MODULE_VERSION=0.001001
inherit perl-module

DESCRIPTION='Introspect many-to-many relationships'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# DBIx::Class
	echo dev-perl/DBIx-Class
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
