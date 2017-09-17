# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=LBROCARD
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION="Create url-safe encodings of 32-bit values"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Crypt-Skip32
	dev-perl/Encode-Base32-Crockford
	virtual/perl-Test-Simple
"
DEPEND="$RDEPEND"

PERL_RM_FILES=(
	t/pod.t
)
SRC_TEST=do
