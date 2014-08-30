# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ABRAXXA
MODULE_VERSION=0.02006
inherit perl-module

DESCRIPTION='Implicit uuid columns'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	 dev-perl/Class-Accessor-Grouped
	>=dev-perl/DBIx-Class-0.70.50
	>=dev-lang/perl-5.8.1
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.42
	>=dev-perl/DBD-SQLite-1.110.0
"
PERL_RM_FILES=(
	t/pod_coverage.t
	t/pod_spelling.t
	t/pod_syntax.t
	t/manifest.t
	t/strict.t
	t/style_no_tabs.t
	t/warnings.t
)
SRC_TEST="do"
