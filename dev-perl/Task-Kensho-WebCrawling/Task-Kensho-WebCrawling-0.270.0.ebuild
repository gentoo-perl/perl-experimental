# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.27"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (web crawling)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+httplite +lwp +wwwmech +wwwmechtreebuilder"
COMMON_DEPEND="
	httplite? ( dev-perl/HTTP-Lite )
	lwp? ( dev-perl/libwww-perl )
	wwwmech? ( dev-perl/WWW-Mechanize )
	wwwmechtreebuilder? ( dev-perl/WWW-Mechanize-TreeBuilder )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
