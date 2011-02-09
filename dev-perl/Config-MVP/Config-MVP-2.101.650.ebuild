# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
MODULE_VERSION=2.101650
inherit perl-module

DESCRIPTION="multivalue-property package-oriented configuration"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Tie-IxHash
	>=dev-perl/Moose-0.91
	dev-perl/Params-Util
	virtual/perl-Module-Pluggable
	>=virtual/perl-Test-Simple-0.88
	virtual/perl-File-Spec
	dev-perl/Try-Tiny
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	!dev-perl/Config-INI-MVP
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
