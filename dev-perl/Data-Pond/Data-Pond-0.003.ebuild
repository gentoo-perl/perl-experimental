# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ZEFRAM
inherit perl-module

DESCRIPTION="Perl-based open notation for data"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +xsmodule"
COMMON_DEPEND="
	dev-perl/Params-Classify
	virtual/perl-parent
	xsmodule? (
		virtual/perl-XSLoader
	)
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	>=dev-lang/perl-5.8.0
	xsmodule? (
		virtual/perl-ExtUtils-CBuilder
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
