# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Simple and dumb file system watcher"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="virtual/perl-Filter"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-SharedFork )"

SRC_TEST=do
