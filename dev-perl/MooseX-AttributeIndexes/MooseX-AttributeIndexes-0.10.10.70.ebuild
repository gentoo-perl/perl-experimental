# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
MODULE_VERSION="0.01001007"
inherit perl-module

DESCRIPTION="Advertise metadata about your Model-Representing Classes to Any Database tool"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/MooseX-Types
	>=dev-perl/namespace-autoclean-0.08
	>=dev-perl/Moose-0.89
	>=virtual/perl-Scalar-List-Utils-1.21
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
