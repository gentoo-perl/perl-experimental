# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=PJF
MODULE_VERSION="2.10"
inherit perl-module

DESCRIPTION="Replace functions with ones that succeed or die with lexical scope"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+system"

COMMON_DEPEND="
	system? (
		>=dev-perl/IPC-System-Simple-0.12
	)
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
