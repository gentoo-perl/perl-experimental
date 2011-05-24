# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=SMUELLER
MODULE_VERSION=0.87
inherit perl-module

DESCRIPTION="Simplified source filtering"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ''; }

COMMON_DEPEND="
	>=virtual/perl-Text-Balanced-1.97
	virtual/perl-Filter	$(comment Filter::Util::Call )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
