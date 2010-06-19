# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=NKH
inherit perl-module

DESCRIPTION="Evalute perl code in context wrapper"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Readonly
	dev-perl/Data-Compare
	dev-perl/Sub-Exporter
	dev-perl/Package-Generator
	dev-perl/Data-TreeDumper
	dev-perl/File-Slurp
	dev-perl/Sub-Install
	>=virtual/perl-Safe-2.16
	>=virtual/perl-version-0.50
	dev-perl/Data-TreeDumper
"
DEPEND="
	${RDEPEND}
	virtual/perl-Module-Build
	dev-perl/Text-Diff
	dev-perl/Test-Block
	dev-perl/Test-Exception
	dev-perl/Test-NoWarnings
	dev-perl/Test-Warn
	dev-perl/Directory-Scratch-Structured
	dev-perl/Test-Output
"

SRC_TEST=do
