# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="An serialization framework for Moose classes"
LICENSE="|| ( Artistic GPL-2 )"

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
		>=dev-perl/Best-0.1
	)
	storable? (
		virtual/perl-Storable
	)
	file? (
		virtual/perl-IO
	)
"
DEPEND="${RDEPEND}
	test? (

		dev-perl/Test-Deep
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.42
		>=dev-perl/Test-TempDir-0.02

		json? (
			>=dev-perl/Test-JSON-0.06
		)
		yaml? (
			dev-perl/Test-YAML-Valid
		)
	)
"
SRC_TEST="do"
