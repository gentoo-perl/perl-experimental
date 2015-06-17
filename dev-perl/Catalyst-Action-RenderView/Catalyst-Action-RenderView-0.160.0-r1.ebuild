# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION="Sensible default end action."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.300
	>=dev-perl/Data-Visitor-0.240.0
	dev-perl/MRO-Compat
"
DEPEND="
	test? ( dev-perl/HTTP-Request-AsCGI )
	${RDEPEND}
"
