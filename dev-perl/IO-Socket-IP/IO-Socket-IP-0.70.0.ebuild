# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='A drop-in replacement for IO::Socket::INET supporting
both IPv4 and IPv6'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36.00
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# IO::Socket
	echo virtual/perl-IO
	# Socket::GetAddrInfo 0.17 ( 0.170.0 )
	echo \>=dev-perl/Socket-GetAddrInfo-0.170.0
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
