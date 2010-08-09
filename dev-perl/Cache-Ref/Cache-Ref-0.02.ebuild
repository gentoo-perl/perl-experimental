# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Uses an mmap'ed file to act as a shared memory interprocess cache"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/Hash-Util-FieldHash-Compat
	dev-perl/Moose
	dev-perl/MooseX-Role-Parameterized
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Test-use-ok
"
RDEPEND="
	${COMMON_DEPEND}
"

SRC_TEST=do
