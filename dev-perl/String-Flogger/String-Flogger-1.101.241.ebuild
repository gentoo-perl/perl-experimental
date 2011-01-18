# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION=1.101241
inherit perl-module

DESCRIPTION="string munging for loggers"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/JSON-2
	dev-perl/Params-Util
	dev-perl/Sub-Exporter"
DEPEND=">=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		>=virtual/perl-Test-Simple-0.96
	)
	${RDEPEND}"

SRC_TEST="do"
