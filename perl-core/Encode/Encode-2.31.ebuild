# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=DANKOGAI
inherit perl-module

DESCRIPTION="character encodings"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-lang/perl"
DEPEND="${RDEPEND}"

SRC_TEST=do
