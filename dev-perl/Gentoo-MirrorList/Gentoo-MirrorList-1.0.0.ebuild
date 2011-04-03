# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="A programmatic way to access Gentoo.org MirrorMetadata"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/App-Cache
	$(comment virtual/perl-Carp)
	dev-perl/Moose
	dev-perl/XML-Simple
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	$(comment virtual/perl-FindBin)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
