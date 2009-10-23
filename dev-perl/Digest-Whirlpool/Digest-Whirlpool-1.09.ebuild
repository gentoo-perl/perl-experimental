# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=AVAR
inherit perl-module

DESCRIPTION="A 512-bit, collision-resistant, one-way hash function"

IUSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/perl-digest-base
	virtual/perl-Getopt-Long
	virtual/perl-MIME-Base64
"
DEPEND="
	${RDEPEND}
"

SRC_TEST="do"
