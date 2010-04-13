# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=GUGU
inherit perl-module

DESCRIPTION="Limit event processing to count/time ratio"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-Module-Load
	dev-perl/Params-Validate
	dev-perl/Class-Accessor
	virtual/perl-version"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Cache-FastMmap
		virtual/perl-File-Temp
	)"
