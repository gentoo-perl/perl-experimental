# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Advertise metadata about your Model-Representing Classes to Any Database tool"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/MooseX-Types-0.190
	>=dev-perl/namespace-autoclean-0.08
	>=dev-perl/Moose-0.94
	>=virtual/perl-Scalar-List-Utils-1.21
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.36.0
	virtual/perl-File-Temp
	test? (
		>=virtual/perl-Test-Simple-0.92
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
