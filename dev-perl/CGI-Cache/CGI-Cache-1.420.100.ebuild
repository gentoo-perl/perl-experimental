# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_VERSION=1.4201
MODULE_AUTHOR=DCOPPIT
inherit perl-module

DESCRIPTION="Perl extension to help cache output of time-intensive CGI scripts"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Tie-Restore
	dev-perl/Cache-Cache
"
DEPEND="${RDEPEND}"

SRC_TEST=do
