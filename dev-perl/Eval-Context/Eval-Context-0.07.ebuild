# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NKH
inherit perl-module

DESCRIPTION="Evalute perl code in context wrapper"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Readonly
	dev-perl/Data-Compare
	dev-perl/Sub-Exporter
	dev-perl/Package-Generator
	dev-perl/Data-TreeDumper
	dev-perl/File-Slurp
	dev-perl/Sub-Install
	dev-perl/Directory-Scratch-Structured"
DEPEND="virtual/perl-Module-Build
	test? ( dev-perl/Test-Pod-Coverage
		dev-perl/Test-NoWarnings
		dev-perl/Data-TreeDumper
		dev-perl/Test-Perl-Critic
		dev-perl/Test-Output )"

SRC_TEST=do
