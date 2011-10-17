# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SCHUBIGER
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION="Factorize numbers and calculate matching multiplications"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/List-MoreUtils
	dev-perl/boolean
	virtual/perl-Scalar-List-Utils
	virtual/perl-XSLoader
	dev-perl/Params-Validate
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.34
"

SRC_TEST=do
