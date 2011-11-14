# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.102360
inherit perl-module

DESCRIPTION="work with nestable Pod elements"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-Encode
	dev-perl/Mixin-Linewise
	>=dev-perl/Moose-0.90
	>=dev-perl/Moose-Autobox-0.100.0
	dev-perl/MooseX-Types
	>=dev-perl/Pod-Eventual-0.4.0
	dev-perl/String-RewritePrefix
	dev-perl/String-Truncate
	dev-perl/Sub-Exporter
	dev-perl/Sub-Exporter-ForMethods
	dev-perl/Test-Deep
	dev-perl/Test-Differences
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
