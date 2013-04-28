# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=1.053
inherit perl-module

DESCRIPTION='non-blocking, parallel DNS client'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Net::DNS 0.65 ( 0.650.0 )
	echo \>=dev-perl/Net-DNS-0.650.0
	# POE 1.294 ( 1.294.0 )
	echo \>=dev-perl/POE-1.294.0
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Test::NoWarnings 1.02 ( 1.20.0 )
	echo \>=dev-perl/Test-NoWarnings-1.20.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
