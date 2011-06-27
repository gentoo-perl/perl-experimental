# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MARKSTOS
MODULE_VERSION="4.11"
inherit perl-module

DESCRIPTION="Framework for building reusable web-applications"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/HTML-Template
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
"
SRC_TEST=do
