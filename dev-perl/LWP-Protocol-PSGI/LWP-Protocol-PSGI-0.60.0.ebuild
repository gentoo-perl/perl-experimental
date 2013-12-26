# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.06
inherit perl-mb-tiny

DESCRIPTION='Override LWP'\''s HTTP/HTTPS backend with your own PSGI applciation'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build::Tiny 0.023 ( 0.23.0 )
	echo \>=dev-perl/Module-Build-Tiny-0.23.0
}
perl_meta_runtime() {
	# Guard
	echo dev-perl/Guard
	# HTTP::Message::PSGI
	echo dev-perl/Plack
	# LWP 5 ( 5.0.0 )
	echo \>=dev-perl/libwww-perl-5.0.0
	# parent
	echo virtual/perl-parent
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
perl_meta_test() {
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
	# Test::Requires
	echo dev-perl/Test-Requires
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
