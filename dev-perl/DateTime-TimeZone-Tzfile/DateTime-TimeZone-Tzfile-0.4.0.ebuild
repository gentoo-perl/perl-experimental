# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION="tzfile (zoneinfo) timezone files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment CORE Carp)
	>=dev-perl/DateTime-TimeZone-SystemV-0.2.0
	>=virtual/perl-IO-1.08 $(comment 1.80.0) $(comment IO::File IO::Handle)
	$(comment CORE constant)
	$(comment CORE integer)
	>=dev-lang/perl-5.6.0
	$(comment CORE strict)
	$(comment CORE warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	>=virtual/perl-IO-1.03 $(comment 1.30.0) $(comment IO::File)
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
	>=dev-lang/perl-5.6.0
	$(comment CORE strict)
	$(comment CORE warnings)

	$(comment CONFIGURE REQUIRES)
	virtual/perl-Module-Build
	>=dev-lang/perl-5.6.0
	$(comment CORE strict)
	$(comment CORE warnings)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
