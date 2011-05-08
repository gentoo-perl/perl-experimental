# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.101620
inherit perl-module

DESCRIPTION="File::ShareDir returning Path::Class objects "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/File-ShareDir
	dev-perl/Sub-Exporter
	dev-perl/Path-Class
	>=dev-lang/perl-5.10.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	$(comment build)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	$(comment virtual/perl-Carp)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
