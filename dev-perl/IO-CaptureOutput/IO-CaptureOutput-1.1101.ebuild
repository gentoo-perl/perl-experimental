# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="Capture STDOUT and STDERR from Perl code, subprocesses or XS"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
DEPEND="
	>=virtual/perl-File-Spec-3.27
	>=virtual/perl-File-Temp-0.16
	test? (
		>=virtual/perl-Test-Simple-0.62
	)
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
