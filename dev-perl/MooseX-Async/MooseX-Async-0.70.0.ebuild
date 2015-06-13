# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=PERIGRIN
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="The Orphanange of Asynchronous Love Children"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/Moose-0.560.0
	>=dev-perl/MooseX-AttributeHelpers-0.130.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-Test-Simple-0.42
"
