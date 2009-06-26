# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=SARTAK
inherit perl-module

DESCRIPTION="easy access to any pastebin"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+pastebin +clipboard +github"
DEPEND="
	dev-perl/WWW-Mechanize
	virtual/perl-Module-Pluggable
	>=dev-perl/Moose-0.74
	>=dev-perl/MooseX-Getopt-0.17
	pastebin? (
		dev-perl/WWW-Pastebin-PastebinCom-Create
	)
	clipboard? (
		dev-perl/Clipboard
	)
	github? (
		|| (
			dev-util/git[perl]
			dev-perl/Config-INI
		)
	)
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
