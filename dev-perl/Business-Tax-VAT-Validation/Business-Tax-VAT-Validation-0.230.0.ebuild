# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BPGN
MODULE_VERSION=0.23
inherit perl-module

DESCRIPTION='A class for european VAT numbers validation.'
LICENSE=" GPL-3"
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
	# HTTP::Request::Common 1 ( 1.0.0 )
	echo \>=dev-perl/HTTP-Message-1.0.0
	# LWP::UserAgent 1 ( 1.0.0 )
	echo \>=dev-perl/libwww-perl-1.0.0
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
