# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=0.271
inherit perl-module

DESCRIPTION='manage connections, with keep-alive'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Net::IP::Minimal 0.02 ( 0.20.0 )
	echo \>=dev-perl/Net-IP-Minimal-0.20.0
	# POE 1.311 ( 1.311.0 )
	echo \>=dev-perl/POE-1.311.0
	# POE::Component::Resolver 0.917 ( 0.917.0 )
	echo \>=dev-perl/POE-Component-Resolver-0.917.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
