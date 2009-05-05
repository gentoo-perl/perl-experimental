# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NKH
inherit perl-module

DESCRIPTION="creates temporary files and directories from a structured description"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Data-TreeDumper
	dev-perl/Readonly
	dev-perl/Directory-Scratch
	dev-perl/Sub-Exporter
	dev-perl/Sub-Install"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? ( dev-perl/Test-Block
		dev-perl/Test-Exception
		dev-perl/Test-Strict
		dev-perl/Test-Warn
		dev-perl/Test-NoWarnings )"

SRC_TEST=do
