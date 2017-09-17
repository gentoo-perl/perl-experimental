# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DANIELTWC
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION="LDAP Model class for Catalyst."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
	t/unit_Connection.t
	t/unit_Connection_bind.t
	t/unit_Connection_search.t
	t/unit_Connection_search_limit.t
	t/live_search.t
	t/live_inherited_component.t
)
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Catalyst-Runtime-5.620.0
	dev-perl/Class-Accessor
	dev-perl/MRO-Compat
	dev-perl/Data-Page
	>=dev-perl/perl-ldap-0.340.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		virtual/perl-Test-Simple
	)
"
