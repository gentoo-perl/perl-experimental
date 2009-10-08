# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Object Graph storage engine"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.83
	>=dev-perl/MooseX-Role-Parameterized-0.10
	>=dev-perl/MooseX-Clone-0.04
	dev-perl/Path-Class
	>=dev-perl/MooseX-YAML-0.02
	virtual/perl-Scalar-List-Utils
	>=dev-perl/namespace-clean-0.08
	dev-perl/Data-UUID
	>=dev-perl/Data-Visitor-0.24
	dev-perl/Tie-ToObject
	dev-perl/Task-Weaken
	>=dev-perl/Data-Stream-Bulk-0.05
	dev-perl/Hash-Util-FieldHash-Compat
	dev-perl/Scope-Guard
	>=dev-perl/Set-Object-1.26
	virtual/perl-Module-Pluggable
	dev-perl/Test-use-ok
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
	>=dev-perl/Search-GIN-0.03
	>=dev-perl/JSON-2.12
	>=dev-perl/JSON-XS-2.2.3.1
	>=dev-perl/YAML-LibYAML-0.30
	virtual/perl-Storable
	>=dev-perl/PadWalker-1.9
	virtual/perl-Digest-SHA
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
