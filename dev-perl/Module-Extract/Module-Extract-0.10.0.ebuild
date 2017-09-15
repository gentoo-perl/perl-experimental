# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ADAMK
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Base class for working with Perl distributions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-File-Temp
	dev-perl/Archive-Extract"
DEPEND="${RDEPEND}"

SRC_TEST=do
