# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Memcached storage backend for session data."
HOMEPAGE="http://search.cpan.org/dist/${P}/"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.26
	dev-perl/Cache-Memcached-Managed
	dev-perl/MRO-Compat
"
