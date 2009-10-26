# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NKH
inherit perl-module

DESCRIPTION="gtk2-perl application to draw ASCII diagrams"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="test"

RDEPEND="dev-perl/gtk2-perl
	dev-perl/Readonly
	dev-perl/Sub-Exporter
	dev-perl/Clone
	dev-perl/Data-Compare
	dev-perl/Data-TreeDumper
	dev-perl/Compress-Bzip2
	dev-perl/Data-TreeDumper-Renderer-GTK
	dev-perl/Eval-Context
	dev-perl/glib-perl
	dev-perl/List-MoreUtils
	virtual/perl-MIME-Base64
	dev-perl/File-Slurp
	dev-perl/Algorithm-Diff
	dev-perl/Module-Util"

DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
	virtual/perl-PodParser
	test? (
		dev-perl/Test-NoWarnings
		dev-perl/Test-Warn
	)
"

SRC_TEST="do"
