# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=CLACO
MODULE_VERSION="0.07001"
inherit perl-module

DESCRIPTION="Lightweight currency conversion using WebserviceX.NET."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="
	dev-perl/libwww-perl
	virtual/perl-Memoize
"
RDEPEND="${DEPEND}"

SRC_TEST="do"
