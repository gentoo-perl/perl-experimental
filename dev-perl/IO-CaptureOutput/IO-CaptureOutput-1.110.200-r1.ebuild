# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=1.1102
inherit perl-module

DESCRIPTION="Capture STDOUT and STDERR from Perl code, subprocesses or XS"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=virtual/perl-File-Spec-3.27
	>=virtual/perl-File-Temp-0.16
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		>=virtual/perl-Test-Simple-0.62
	)
"
