# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=SMUELLER
inherit perl-module

DESCRIPTION="Perl Archive Toolkit"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=virtual/perl-Compress-Zlib-1.30
	>=dev-perl/Archive-Zip-1.00
	>=dev-perl/PAR-Dist-0.22
	dev-perl/Digest-SHA1
	dev-perl/Module-Signature
"

