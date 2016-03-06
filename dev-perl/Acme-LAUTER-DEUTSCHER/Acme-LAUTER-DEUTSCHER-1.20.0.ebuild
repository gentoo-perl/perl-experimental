# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=IAN
MODULE_VERSION=1.02
inherit perl-module

DESCRIPTION='Make your program'\''s output indistinguishable from someone yelling German'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nettest test"
REQUIRED_USE="nettest? ( test )"

src_prepare() {
	perl-module_src_prepare;
	epatch "${FILESDIR}/${MODULE_VERSION}/remove_nettest_prompt.patch"
	if use nettest ; then
		epatch "${FILESDIR}/${MODULE_VERSION}/enable_nettests.patch"
	fi
	rm t/0-signature.t
	sed -ni '/t\/0-signature.t/d;p' MANIFEST
}
perl_meta_runtime() {
	# Lingua::Translate 0.08 ( 0.80.0 )
	echo \>=dev-perl/Lingua-Translate-0.80.0
	# PerlIO::via 0.02 ( 0.20.0 )
	echo \>=dev-lang/perl-0.20.0
	# Test::More 0.54 ( 0.540.0 )
	echo \>=virtual/perl-Test-Simple-0.54
}
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
