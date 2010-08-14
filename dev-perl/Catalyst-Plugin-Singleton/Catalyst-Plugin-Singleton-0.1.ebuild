# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Singleton to context"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	virtual/perl-Module-Build
	virtual/perl-Scalar-List-Utils
	dev-perl/MRO-Compat
"
RDEPEND="${DEPEND}"
SRC_TEST=do
