# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LBROCARD
MODULE_VERSION="0.36"
inherit perl-module

DESCRIPTION="Provide an index of BACKPAN"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test -big-net-test"
COMMON_DEPEND="
	dev-perl/libwww-perl
	virtual/perl-IO-Zlib
	virtual/perl-IO-Compress
	dev-perl/App-Cache
	dev-perl/Class-Accessor
	dev-perl/CPAN-DistnameInfo
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
src_test() {

	if use big-net-test ; then
		ebeep 1;
		ewarn 'Warning: You have selected USE="big-net-test"';
		ewarn " This will download ~1Mb from CPAN/BACKPAN";
		ewarn " Without this flag in your USE, no tests will be performed.";
		einfo " ";
		ebeep 1;
		epause 4;
		perl-module_src_test

	else

		ewarn "Tests skipped due to USE=\"-big-net-test\"."
		ewarn "Turning this flag on will enable tests for this module, "
		ewarn " but will also require internet connectivity and download ~1Mb"
		ewarn " (or possiby more) from BACKPAN"

	fi
}
