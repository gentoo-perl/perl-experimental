# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ELIZABETH
MODULE_VERSION=0.24
inherit perl-module

DESCRIPTION='provide API for managing cached information'
LICENSE="|| ( GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Cache::Memcached
	echo dev-perl/Cache-Memcached
}
DEPEND="
	net-misc/memcached
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	net-misc/memcached
	$(perl_meta_runtime)
"
