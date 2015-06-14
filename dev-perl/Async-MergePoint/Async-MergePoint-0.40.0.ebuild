# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='resynchronise diverged control flow'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build
	echo dev-perl/Module-Build
}
perl_meta_build() {
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do"
