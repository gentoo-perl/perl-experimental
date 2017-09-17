# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION='manage flow of control in Continuation-Passing Style'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Identity
	echo dev-perl/Test-Identity
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Refcount
	echo dev-perl/Test-Refcount
}
perl_meta_runtime() {
	# Future
	echo dev-perl/Future
}
DEPEND="
	dev-perl/Module-Build
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
