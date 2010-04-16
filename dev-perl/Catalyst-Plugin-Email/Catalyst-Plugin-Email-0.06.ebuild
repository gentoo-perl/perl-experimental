# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Send emails with Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Email-Send
	dev-perl/Email-MIME
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
