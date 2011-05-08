# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.111260
inherit perl-module

DESCRIPTION="automate launching of fake mpd for testing purposes"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo '';}

COMMON_DEPEND="
	$(comment virtual/perl-Exporter)
	$(comment virtual/perl-File-Copy)
	dev-perl/File-ShareDir-PathClass
	virtual/perl-File-Temp
	dev-perl/Path-Class
	dev-perl/Readonly

	media-sound/mpd
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)

	$(comment build)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0 Test::More)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
