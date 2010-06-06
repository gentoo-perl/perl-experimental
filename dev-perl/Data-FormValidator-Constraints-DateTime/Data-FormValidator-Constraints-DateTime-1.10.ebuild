# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=WONKO
inherit perl-module

DESCRIPTION="D::FV constraints for dates and times"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/DateTime-0.23
	>=dev-perl/DateTime-Format-Strptime-1.00
	dev-perl/DateTime-Format-Builder
	>=dev-perl/Data-FormValidator-3.61"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
