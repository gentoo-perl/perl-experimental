# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=KANE
inherit perl-module

DESCRIPTION="API & CLI access to the CPAN mirrors"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=dev-lang/perl-5.10"
DEPEND="${RDEPEND}"

SRC_TEST=do
