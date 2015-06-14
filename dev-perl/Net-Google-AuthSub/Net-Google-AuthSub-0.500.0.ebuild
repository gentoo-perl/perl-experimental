# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SIMONW
MODULE_VERSION=0.5
inherit perl-module

DESCRIPTION='interact with sites that implement Google style AuthSub'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Test::More 0.62 ( 0.620.0 )
	echo \>=virtual/perl-Test-Simple-0.62
	# URI
	echo dev-perl/URI
}
DEPEND="
	dev-perl/Module-Build
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
