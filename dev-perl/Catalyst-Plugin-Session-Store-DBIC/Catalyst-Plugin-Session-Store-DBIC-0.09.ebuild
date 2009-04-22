# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="File storage backend for session data"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.65
	>=dev-perl/Catalyst-Plugin-Session-Store-Delegate-0.02
	dev-perl/Class-Accessor
	>=dev-perl/DBIx-Class-0.07000
	dev-perl/MRO-Compat
"
