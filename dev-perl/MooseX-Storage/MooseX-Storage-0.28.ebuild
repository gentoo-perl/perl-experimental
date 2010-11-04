# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="An serialization framework for Moose classes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +json +yaml +storable +file"

RDEPEND="
	>=dev-perl/Moose-0.87
	dev-perl/String-RewritePrefix
	json? (
		>=dev-perl/JSON-Any-1.15
	)
	yaml? (
		dev-perl/yaml
	)
	storable? (
		virtual/perl-Storable
	)
	file? (
		>=virtual/perl-IO-0.1
	)
"
DEPEND="${RDEPEND}
	test? (

		dev-perl/Test-Deep
		dev-perl/Test-Exception
		dev-perl/Test-Requires
		>=virtual/perl-Test-Simple-0.88
		>=dev-perl/Test-TempDir-0.02

		json? (
			>=dev-perl/Test-JSON-0.06
		)
	)
"
SRC_TEST="do"
