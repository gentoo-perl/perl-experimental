# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=OVID
inherit perl-module

DESCRIPTION="Most commonly needed test functions and features"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Exception-Class
	dev-perl/Test-Warn
	dev-perl/Test-Deep
	dev-perl/Test-Differences
	dev-perl/Test-Exception"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
