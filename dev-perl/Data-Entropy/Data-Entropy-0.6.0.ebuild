# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION="0.006"
inherit perl-module

DESCRIPTION="entropy (randomness) management"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Crypt-Rijndael
	>=dev-perl/Data-Float-0.008
	>=dev-perl/libwww-perl-5.539
	dev-perl/Params-Classify
	!<dev-perl/Math-BigInt-1.60
	!<dev-perl/Math-BigRat-0.04
	virtual/perl-parent
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
