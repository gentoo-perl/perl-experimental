# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="RCAPUTO"
MODULE_VERSION="1.051"
inherit perl-module

DESCRIPTION="Non-blocking, concurrent DNS requests"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/POE-1.280.0
	>=dev-perl/Net-DNS-0.59"
DEPEND="${RDEPEND}
	test? ( >=dev-perl/Test-NoWarnings-0.084 )"

SRC_TEST="do"
