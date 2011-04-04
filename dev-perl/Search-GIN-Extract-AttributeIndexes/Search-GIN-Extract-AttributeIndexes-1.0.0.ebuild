# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL

inherit perl-module

DESCRIPTION="Automatically collect index metadata from MooseX::AttributeIndexes consuming models. "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/namespace-autoclean
	dev-perl/Moose
	virtual/perl-Scalar-List-Utils
	dev-perl/Search-GIN
	$(comment virtual/perl-Carp)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Data-Dump
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	dev-perl/MooseX-AttributeIndexes
	dev-perl/MooseX-Types
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
