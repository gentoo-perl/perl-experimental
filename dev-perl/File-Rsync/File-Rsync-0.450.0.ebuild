# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=LEAKIN
MODULE_VERSION=0.45
inherit perl-module

DESCRIPTION="Perl interface to rsync"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Scalar-Util
	net-misc/rsync
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
