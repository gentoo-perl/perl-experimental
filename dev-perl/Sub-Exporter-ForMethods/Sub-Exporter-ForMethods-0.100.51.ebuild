# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.100051
inherit perl-module

DESCRIPTION="helper routines for using Sub::Exporter to build methods"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Sub-Exporter-0.978.0
	dev-perl/Sub-Name
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-Carp
		virtual/perl-File-Spec
		virtual/perl-IO
		>=virtual/perl-Test-Simple-0.960.0
		dev-perl/namespace-autoclean
	)
"
