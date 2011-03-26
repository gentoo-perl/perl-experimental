# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ADAMK
MODULE_VERSION="1.05"
inherit perl-module

DESCRIPTION="Generate cryptographic signatures for objects"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-perl/Module-Install"
DEPEND="${RDEPEND}"
SRC_TEST="do"
