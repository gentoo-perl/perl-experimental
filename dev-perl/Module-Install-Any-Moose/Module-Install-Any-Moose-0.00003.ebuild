# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DMAKI
inherit perl-module

DESCRIPTION="Automatically sets repository URL from svn/svk/Git checkout"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/Module-Install-0.72"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
