# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FREW
MODULE_VERSION="0.06001_01"
inherit perl-module

DESCRIPTION="Automatic digest columns."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS=""
comment() { echo ''; }
IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.81.210
	virtual/perl-Digest-SHA
	virtual/perl-Digest-MD5
	>=virtual/perl-digest-base-1.11 $(comment 1.110.0) $(comment Digest)
"
DEPEND="
	${RDEPEND}
	>=dev-perl/DBD-SQLite-1.25 $(comment 1.250.0)
	virtual/perl-Module-Build
"
SRC_TEST="do"
