# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01023600
inherit perl-module

DESCRIPTION="A minimal boot-strapping for Dist::Zilla Plug-ins."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { echo ''; }
IUSE=""
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	virtual/perl-File-Spec
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
