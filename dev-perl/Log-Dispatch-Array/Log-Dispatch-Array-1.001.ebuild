# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="log events to an array (reference)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/log-dispatch"
DEPEND="${RDEPEND}"

SRC_TEST=do
