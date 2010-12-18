# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Base class for injecting distributions into CPAN sources"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PATCHES=(
	"${FILESDIR}/Test-${PV}.patch"
);
COMMON_DEPEND="
	>=virtual/perl-File-Spec-0.80
	>=dev-perl/File-chmod-0.30
	>=virtual/perl-File-Path-1.00
	>=dev-perl/Params-Util-0.21
	>=virtual/perl-CPAN-1.36
	>=dev-perl/CPAN-Checksums-1.05
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42
		>=dev-perl/Test-Script-1.02
		>=dev-perl/File-Remove-0.34
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
