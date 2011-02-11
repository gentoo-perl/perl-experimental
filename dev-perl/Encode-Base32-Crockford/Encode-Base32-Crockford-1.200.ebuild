# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=HEX
MODULE_VERSION="1.2"
inherit perl-module

DESCRIPTION="encode/decode numbers using Douglas Crockford's Base32 Encoding"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	virtual/perl-Scalar-List-Utils
	dev-perl/Test-Warn
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
