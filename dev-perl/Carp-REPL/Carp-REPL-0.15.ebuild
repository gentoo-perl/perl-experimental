# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=SARTAK
inherit perl-module

DESCRIPTION="Warns and dies noisily with stack backtraces"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Devel-StackTrace-WithLexicals
	dev-perl/Devel-LexAlias
	dev-perl/Devel-REPL
	dev-perl/namespace-clean
	dev-perl/Data-Dump-Streamer
	dev-perl/Lexical-Persistence
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
