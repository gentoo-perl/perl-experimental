# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ILMARI
MODULE_VERSION=0.07042
inherit perl-module

DESCRIPTION='Create a DBIx::Class::Schema based on a database'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/02pod.t
)
RDEPEND="
	dev-perl/Carp-Clan
	>=dev-perl/Class-Accessor-Grouped-0.100.80
	>=dev-perl/Class-C3-Componentised-1.0.800
	>=dev-perl/Class-Inspector-1.270.0
	>=dev-perl/Class-Unload-0.70.0
	>=dev-perl/Data-Dump-1.60.0
	>=dev-perl/DBIx-Class-0.81.270
	>=dev-perl/Hash-Merge-0.120.0
	>=dev-perl/Lingua-EN-Inflect-Number-1.100.0
	>=dev-perl/Lingua-EN-Tagger-0.230.0
	>=dev-perl/Lingua-EN-Inflect-Phrase-0.150.0
	>=dev-perl/List-MoreUtils-0.320.0
	>=dev-perl/MRO-Compat-0.90.0
	>=dev-perl/namespace-clean-0.230.0
	>=dev-perl/Scope-Guard-0.200.0
	>=dev-perl/String-ToIdentifier-EN-0.50.0
	>=dev-perl/String-CamelCase-0.20.0
	dev-perl/Sub-Name
	dev-perl/Try-Tiny
	>=virtual/perl-Digest-MD5-2.36
	>=virtual/perl-Exporter-5.630.0
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		dev-perl/DBIx-Class-IntrospectableM2M
		>=virtual/perl-File-Temp-0.160.0
		>=virtual/perl-File-Path-2.70.0
		>=dev-perl/DBD-SQLite-1.290.0
		>=dev-perl/Test-Exception-0.310.0
		>=virtual/perl-Test-Simple-0.940.0
		>=dev-perl/Test-Warn-0.210.0
		>=dev-perl/Test-Deep-0.107.0
		>=dev-perl/Test-Differences-0.600.0
	)
"
src_test() {
	export CAG_OLD_XS_NOWARN=1
	perl-module_src_test;
}
