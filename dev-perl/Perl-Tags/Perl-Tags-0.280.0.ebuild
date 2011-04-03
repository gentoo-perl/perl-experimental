# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=OSFAMERON
MODULE_VERSION=0.28
inherit perl-module

DESCRIPTION="Generate (possibly exuberant) Ctags style tags for Perl sourcecode"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	$(comment virtual/perl-File-Find)
	dev-perl/Module-Locate
	dev-perl/PPI
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
	>=virtual/perl-Test-Simple-0.42 $(comment 0.420.0)
	$(comment virtual/perl-Data-Dumper)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
