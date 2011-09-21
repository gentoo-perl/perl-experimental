# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_VERSION=0.07
MODULE_AUTHOR=ZEFRAM
inherit perl-module

DESCRIPTION="Invoke callbacks on construction of entersub OPs for certain CVs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true; }
COMMON_DEPEND="
	$(comment --require)
	$(comment parent)
	virtual/perl-parent

	$(comment Scalar::Util)
	virtual/perl-Scalar-List-Utils

	$(comment B::Utils)
	dev-perl/B-Utils

	$(comment B::Hooks::OP::Check 0.19)
	>=dev-perl/B-Hooks-OP-Check-0.190.0
"
DEPEND="
	${COMMON_DEPEND}

	$(comment --build)
	$(comment B::Utils)
	dev-perl/B-Utils

	$(comment B::Hooks::OP::Check 0.19)
	>=dev-perl/B-Hooks-OP-Check-0.190.0

	$(comment --configure)

	$(comment B::Utils)
	dev-perl/B-Utils

	$(comment ExtUtils::Depends)
	dev-perl/extutils-depends

	$(comment B::Hooks::OP::Check 0.19)
	>=dev-perl/B-Hooks-OP-Check-0.190.0
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
