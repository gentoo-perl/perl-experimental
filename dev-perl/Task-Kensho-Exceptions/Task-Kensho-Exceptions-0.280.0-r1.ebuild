# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (exception handling modules)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+trytiny +trycatch +autodie"
COMMON_DEPEND="
	trytiny? ( dev-perl/Try-Tiny )
	trycatch? ( dev-perl/TryCatch )
	autodie? ( virtual/perl-autodie )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
