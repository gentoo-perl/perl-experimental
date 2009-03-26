# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="Recursively merge two or more hashes, simply"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Clone
"
