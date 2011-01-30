# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.01
inherit perl-module perl-declaredeps

DESCRIPTION="Factory wrapper around WWW::Shorten to avoid imports"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
bdepend-virtual Test-Simple # Test-More
ddep_setup

SRC_TEST="do"
