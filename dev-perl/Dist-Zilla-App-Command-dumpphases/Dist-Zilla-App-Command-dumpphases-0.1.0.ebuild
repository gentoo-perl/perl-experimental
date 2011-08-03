# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.1.0
inherit perl-module

DESCRIPTION="Dump a textual representation of each phase\'s parts."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Dist-Zilla $(comment Dist::Zilla::App)
	dev-perl/Moose-Autobox
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	virtual/perl-Term-ANSIColor
	dev-perl/Try-Tiny
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	$(comment build)
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
