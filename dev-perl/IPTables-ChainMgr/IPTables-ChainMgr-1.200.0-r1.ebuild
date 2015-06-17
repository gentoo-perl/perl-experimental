# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MRASH
MODULE_VERSION=1.2
inherit perl-module

DESCRIPTION='Perl extension for manipulating iptables and ip6tables policies'
LICENSE=" Artistic"
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
	# IPTables::Parse 0.9 ( 0.900.0 )
	echo \>=dev-perl/IPTables-Parse-0.900.0
	# NetAddr::IP 4 ( 4.0.0 )
	echo \>=dev-perl/NetAddr-IP-4.000
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
