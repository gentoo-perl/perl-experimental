# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Emoticon filter of MSN Messenger"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=virtual/perl-Test-Simple-0.320.0
	>=dev-perl/Text-Emoticon-0.20.0
"
DEPEND="${RDEPEND}"
SRC_TEST=do
