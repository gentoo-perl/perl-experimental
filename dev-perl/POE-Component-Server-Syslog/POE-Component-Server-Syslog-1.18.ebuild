# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BINGOS
inherit perl-module

DESCRIPTION="Syslog services for POE"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-lang/perl-5.6.1
	>=dev-perl/POE-0.24
	dev-perl/Params-Validate
	dev-perl/Time-modules"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.47 )"
