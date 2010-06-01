# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="ACOBURN"
inherit perl-module

DESCRIPTION="Part-of-speech tagger for English natural language processing"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/HTML-Parser-3.45
	>=dev-perl/Lingua-Stem-0.81
	dev-perl/Memoize-ExpireLRU"
DEPEND="${RDEPEND}"

SRC_TEST="do"
