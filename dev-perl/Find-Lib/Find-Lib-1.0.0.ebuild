# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=YANNK
MODULE_VERSION="1.0"
inherit perl-module

DESCRIPTION="Helper to smartly find libs to use in the filesystem tree"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-File-Spec
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
