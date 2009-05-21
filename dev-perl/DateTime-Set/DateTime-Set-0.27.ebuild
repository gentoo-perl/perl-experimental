# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FGLOCK
inherit perl-module

DESCRIPTION="Datetime sets and set math"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/DateTime-0.12
	>=dev-perl/Set-Infinite-0.59
	dev-perl/Params-Validate"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
