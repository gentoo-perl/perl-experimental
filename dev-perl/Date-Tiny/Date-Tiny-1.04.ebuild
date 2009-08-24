# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="A date object with as little code as possible"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-lang/perl-5.004
"
# >=Test-More-0.47
RDEPEND="${DEPEND}"
SRC_TEST="do"
