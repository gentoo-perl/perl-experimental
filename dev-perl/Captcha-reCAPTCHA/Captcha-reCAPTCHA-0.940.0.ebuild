# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ANDYA
MODULE_VERSION="0.94"
inherit perl-module

DESCRIPTION="A Perl implementation of the reCAPTCHA API"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/libwww-perl
	>=dev-perl/HTML-Tiny-0.904
"
DEPEND="${RDEPEND}"
SRC_TEST=do

