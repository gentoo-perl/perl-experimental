# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SIMONW
inherit perl-module

DESCRIPTION="Interact with sites that implement Google style AuthSub"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/libwww-perl
	dev-perl/URI"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.62 )"
