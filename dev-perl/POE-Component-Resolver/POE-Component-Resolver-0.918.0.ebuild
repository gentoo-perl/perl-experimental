# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=0.918
inherit perl-module

DESCRIPTION='A non-blocking getaddrinfo() resolver'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# POE 1.311 ( 1.311.0 )
	echo \>=dev-perl/POE-1.311.0
	# Scalar::Util 1.23 ( 1.230.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.23
	# Socket::GetAddrInfo 0.19 ( 0.190.0 )
	echo \>=dev-perl/Socket-GetAddrInfo-0.190.0
	# Storable 2.18 ( 2.180.0 )
	echo \>=virtual/perl-Storable-2.18
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Time::HiRes 1.9711 ( 1.971.100 )
	echo \>=virtual/perl-Time-HiRes-1.97.11
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
