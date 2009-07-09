# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SAMV
inherit perl-module

DESCRIPTION="Translate text from one language to another"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
#SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-perl/HTML-Parser-3.34
	>=dev-perl/libwww-perl-5.51
	>=dev-perl/Pod-Constants-0.15
	>=dev-perl/Unicode-MapUTF8-1.09"
DEPEND="${RDEPEND}"
