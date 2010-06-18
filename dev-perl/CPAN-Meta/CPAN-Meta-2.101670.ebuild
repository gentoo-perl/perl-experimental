# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="the distribution metadata for a CPAN dist "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/JSON-2
	virtual/perl-Parse-CPAN-Meta
	virtual/perl-Scalar-List-Utils
	virtual/perl-Storable
	>=dev-perl/Version-Requirements-0.101020
	dev-perl/autodie
	>=virtual/perl-version-0.82
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	virtual/perl-File-Spec
	virtual/perl-IO
	>=virtual/perl-File-Temp-0.20
	>=virtual/perl-Test-Simple-0.88
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
