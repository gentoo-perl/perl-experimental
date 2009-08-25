# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MARKSTOS
inherit perl-module

DESCRIPTION="Framework for building reusable web-applications"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/HTML-Template
"
RDEPEND="$DEPEND"
SRC_TEST="do"
