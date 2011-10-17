# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.002
inherit perl-module

DESCRIPTION="Extract module requirements from MYMETA files"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-PodParser
	virtual/perl-Version-Requirements
	dev-perl/Getopt-Lucid
	virtual/perl-CPAN-Meta
	dev-perl/Class-Load
	dev-perl/Object-Tiny
	dev-perl/Log-Dispatchouli
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Capture-Tiny
		dev-perl/File-pushd
	)
"

SRC_TEST=do
