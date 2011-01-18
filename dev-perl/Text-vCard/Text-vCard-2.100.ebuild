# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=LLAP
MODULE_VERSION=2.10
inherit perl-module

DESCRIPTION="Edit or create a single vCard (RFC 2426)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Text-vFile-asData-0.07
	>=dev-perl/File-Slurp-9999.04
	>=virtual/perl-MIME-Base64-3.07"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.1 )"

SRC_TEST="do"
