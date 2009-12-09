# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="work with nestable Pod elements"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-Encode
	dev-perl/Moose
	>=dev-perl/Moose-Autobox-0.10
	dev-perl/MooseX-Types
	dev-perl/Mixin-Linewise
	dev-perl/namespace-autoclean
	>=dev-perl/Pod-Eventual-0.004
	dev-perl/String-RewritePrefix
	dev-perl/String-Truncate
	dev-perl/Sub-Exporter-ForMethods
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Deep
		dev-perl/Test-Differences
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
