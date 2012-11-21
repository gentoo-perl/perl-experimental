# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='represent an operation awaiting completion'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Identity
	echo dev-perl/Test-Identity
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Refcount
	echo dev-perl/Test-Refcount
}
DEPEND="
	virtual/perl-Module-Build
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do"
