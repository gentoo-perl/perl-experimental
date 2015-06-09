# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SCHWIGON
MODULE_VERSION=0.53
inherit perl-module

DESCRIPTION="DPath is not XPath!"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Class-XSAccessor
	virtual/perl-Data-Dumper
	dev-perl/Iterator-Util
	dev-perl/List-MoreUtils
	virtual/perl-Scalar-List-Utils
	>=virtual/perl-Safe-2.300.0
	dev-perl/Sub-Exporter
	>=virtual/perl-Text-Balanced-2.20.0
	>=dev-perl/aliased-0.330.0
	virtual/perl-constant
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Test-Deep
		>=virtual/perl-Test-Simple-0.880.0
	)
"
