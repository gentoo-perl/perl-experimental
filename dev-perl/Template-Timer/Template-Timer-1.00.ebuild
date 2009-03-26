# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=PETDANCE
inherit perl-module

DESCRIPTION="Rudimentary profiling for Template Toolkit"

LICENSE="|| ( Artistic-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Template-Toolkit
	virtual/perl-Time-HiRes"
DEPEND="test? ( ${RDEPEND}
	dev-perl/Test-Pod )"

SRC_TEST=do
