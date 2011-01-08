# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.013
inherit perl-module

DESCRIPTION="argument type classification"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=virtual/perl-Scalar-List-Utils-1.01
	virtual/perl-XSLoader
	virtual/perl-parent
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	>=virtual/perl-ExtUtils-CBuilder-0.15
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
