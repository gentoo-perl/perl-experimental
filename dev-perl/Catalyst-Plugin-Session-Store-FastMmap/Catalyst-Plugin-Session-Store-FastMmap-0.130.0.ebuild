# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MSTROUT
MODULE_VERSION="0.13"
inherit perl-module

DESCRIPTION="FastMmap session storage backend."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Cache-FastMmap-1.290.0
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	dev-perl/Path-Class
	dev-perl/MRO-Compat
	virtual/perl-File-Spec
	virtual/perl-File-Temp
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
