# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BRICAS
inherit perl-module

DESCRIPTION="vCard view for Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/Catalyst-Runtime
	dev-perl/Text-vCard"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
