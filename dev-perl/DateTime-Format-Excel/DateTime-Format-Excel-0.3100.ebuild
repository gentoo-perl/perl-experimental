# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ABURS

# This voodoo strips the 00 off the end.
MODULE_VERSION="${PV%00}"

inherit perl-module

DESCRIPTION="Convert between DateTime and Excel dates."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/DateTime-0.18
	>=virtual/perl-Test-Simple-0.47

"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
"
SRC_TEST="do"
