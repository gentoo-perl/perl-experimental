# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="Emoticon filter of MSN Messenger"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Text-Emoticon-0.02
"
DEPEND="${RDEPEND}"
