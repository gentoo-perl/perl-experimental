# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FREW
MODULE_VERSION="0.06001_01"
inherit perl-module

DESCRIPTION="Automatic digest columns."
RESTRICT=test # CRC32 Failures
PERL_RESTRICT="parallel-test"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.81.210
	virtual/perl-Digest-SHA
	virtual/perl-Digest-MD5
	>=virtual/perl-Digest-1.110.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/DBD-SQLite-1.250.0
	dev-perl/Module-Build
"
