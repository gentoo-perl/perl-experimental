# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.07_006
inherit perl-module

DESCRIPTION='A drop-in replacement for IO::Socket::INET supporting
both IPv4 and IPv6'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS=""
IUSE=""
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# IO::Socket
	echo virtual/perl-IO
	# Socket 1.95 ( 1.950.0 )
	echo \>=dev-perl/Socket-1.950.0
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
