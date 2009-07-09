# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NEKOKAK
inherit perl-module

DESCRIPTION="URI::Fetch extension with local cache"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-perl/URI-Fetch
	dev-perl/Cache-Cache"
DEPEND="${RDEPEND}"
