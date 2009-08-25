# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$
EAPI=2
MODULE_AUTHOR=YVES
inherit perl-module

DESCRIPTION="Install files from here to there"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	virtual/perl-Module-Build
	virtual/perl-File-Spec
"
RDEPEND="${DEPEND}"

SRC_TEST=do
