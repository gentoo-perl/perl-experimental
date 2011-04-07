# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ARTHAS
MODULE_VERSION="0.0003"
inherit perl-module

DESCRIPTION="Catalyst view to convert HTML (or TT) content to PDF using wkhtmltopdf"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	dev-perl/Catalyst-View-TT
	virtual/perl-File-Temp
	dev-perl/URI
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31 $(comment 6.310.0)
"
SRC_TEST="do"
