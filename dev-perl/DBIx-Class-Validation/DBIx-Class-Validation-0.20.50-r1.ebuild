# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=CLACO
MODULE_VERSION=0.02005
inherit perl-module

DESCRIPTION="Validate all data before submitting to your database."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test minimal"
PERL_RM_FILES=(
	# Useless author tests
	t/pod_syntax.t
	t/pod_spelling.t
	t/pod_coverage.t
	t/style_no_tabs.t
	t/manifest.t
	t/strict.t
	t/warnings.t
)
PERL_RESTRICT="parallel-test"
RDEPEND="
	>=dev-perl/DBIx-Class-0.70.50
	>=dev-perl/FormValidator-Simple-0.170.0
	!minimal? (
		dev-perl/Data-FormValidator
	)
"
DEPEND="${DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		>=dev-perl/DBD-SQLite-1.110.0
		dev-perl/DateTime-Format-SQLite
	)
"
