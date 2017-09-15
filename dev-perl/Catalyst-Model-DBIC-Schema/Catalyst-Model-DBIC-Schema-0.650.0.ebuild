# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=GBJK
MODULE_VERSION=0.65
inherit perl-module

DESCRIPTION='DBIx::Class::Schema Model Class'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/02pod.t
)
RDEPEND="
	dev-perl/Carp-Clan
	dev-perl/Catalyst-Component-InstancePerContext
	>=dev-perl/Catalyst-Devel-1.0.0
	>=dev-perl/Catalyst-Runtime-5.800.50
	>=dev-perl/CatalystX-Component-Traits-0.140.0
	>=dev-perl/DBIx-Class-0.81.140
	dev-perl/DBIx-Class-Cursor-Cached
	>=dev-perl/DBIx-Class-Schema-Loader-0.40.50
	dev-perl/Hash-Merge
	dev-perl/List-MoreUtils
	>=dev-perl/Moose-1.120.0
	>=dev-perl/MooseX-MarkAsMethods-0.130.0
	>=dev-perl/MooseX-NonMoose-0.160.0
	dev-perl/MooseX-Types
	>=dev-perl/MooseX-Types-LoadableClass-0.9.0
	>=dev-perl/Module-Runtime-0.12.0
	dev-perl/Tie-IxHash
	dev-perl/Try-Tiny
	>=dev-perl/namespace-autoclean-0.90.0
	dev-perl/namespace-clean
	>=dev-lang/perl-5.8.1
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		dev-perl/DBD-SQLite
		virtual/perl-Storable
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.940.0
		dev-perl/Test-Requires
	)
"
