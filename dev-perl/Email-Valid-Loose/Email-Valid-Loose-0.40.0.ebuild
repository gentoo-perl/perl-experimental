# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Email::Valid which allows dot before at mark"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND=">=perl-core/Test-Simple-0.32
	>=dev-perl/Email-Valid-0.13"
DEPEND="${RDEPEND}"
SRC_TEST=do
