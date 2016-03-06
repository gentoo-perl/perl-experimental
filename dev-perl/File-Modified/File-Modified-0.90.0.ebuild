# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=NEILB
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="checks intelligently if files have changed"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+digest test"

RDEPEND="digest? (
	virtual/perl-Digest
	virtual/perl-Digest-MD5
)"

DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
SRC_TEST=do
