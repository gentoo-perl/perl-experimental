# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JDUNCAN
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="copy Regexp objects"
LICENSE="|| ( Artistic GPL-2 )"
RESTRICT="test" # https://rt.cpan.org/Ticket/Display.html?id=33531 and https://rt.cpan.org/Ticket/Display.html?id=52833

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND=""
DEPEND=""

SRC_TEST=do
