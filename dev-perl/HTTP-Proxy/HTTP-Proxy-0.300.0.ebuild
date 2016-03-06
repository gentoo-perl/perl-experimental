# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOOK
MODULE_VERSION=0.300
inherit perl-module

DESCRIPTION='A pure Perl HTTP proxy'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_runtime() {
	# HTTP::Daemon 1.25 ( 1.250.0 )
	echo \>=dev-perl/HTTP-Daemon-1.250.0
	# LWP::UserAgent 2 ( 2.0.0 )
	echo \>=dev-perl/libwww-perl-2.0.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
