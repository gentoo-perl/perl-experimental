# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="store sessions in a berkeleydb"

IUSE="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/BerkeleyDB-Manager
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	>=dev-perl/Catalyst-Runtime-5.700.0
	dev-perl/Class-Data-Inheritable
	dev-perl/MRO-Compat
	virtual/perl-Scalar-List-Utils
	virtual/perl-Storable
	dev-perl/namespace-clean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/File-Remove
		dev-perl/Test-WWW-Mechanize-Catalyst
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
PERL_RM_FILES=(
	t/author/pod.t
)
