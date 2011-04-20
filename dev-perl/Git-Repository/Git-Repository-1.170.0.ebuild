# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BOOK
MODULE_VERSION=1.17
inherit perl-module

DESCRIPTION="Perl interface to Git repositories"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/System-Command-1.10.0
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
"

SRC_TEST=do
