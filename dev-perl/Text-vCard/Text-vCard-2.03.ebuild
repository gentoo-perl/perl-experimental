# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=LLAP
inherit perl-module

DESCRIPTION="Edit or create a single vCard (RFC 2426)"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/Text-vFile-asData-0.05
	>=dev-perl/File-Slurp-9999.04
	>=virtual/perl-MIME-Base64-3.07"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.1 )"
