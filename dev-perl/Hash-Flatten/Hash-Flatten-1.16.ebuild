# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BBC
inherit perl-module

DESCRIPTION="flatten/unflatten complex data hashes"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPENDS="
	dev-perl/Test-Assertions
	dev-perl/Log-Trace
"
