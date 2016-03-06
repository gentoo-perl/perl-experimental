# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=FLORA
MODULE_VERSION="0.16"
inherit perl-module

DESCRIPTION="Store your sessions in a database"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
	t/04critic.t
)
PERL_RESTRICT="parallel-test"
RDEPEND=">=dev-perl/Catalyst-Runtime-5.490.0
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	dev-perl/DBI
	virtual/perl-MIME-Base64
	virtual/perl-Storable
	dev-perl/MRO-Compat"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? ( virtual/perl-Test-Simple )
"
