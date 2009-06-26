# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=CHROMATIC
inherit perl-module

DESCRIPTION="Attempt to recover from people calling UNIVERSAL::isa as a function"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-Module-Build-0.31
"

SRC_TEST=do
