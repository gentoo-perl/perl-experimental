# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Generating and Populating 'provides' in your META.yml"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Class-Discover-1.000001
	>=dev-perl/Dist-Zilla-2.101310
	>=dev-perl/List-MoreUtils-0.22
	>=dev-perl/Module-Extract-Namespaces-0.14
	>=dev-perl/Module-Extract-VERSION-0.13
	>=dev-perl/Moose-0.89
	>=dev-perl/Moose-Autobox-0.09
	>=dev-perl/MooseX-Has-Sugar-0.0404
	>=dev-perl/MooseX-Types-0.19
	>=dev-perl/aliased-0.30
	>=dev-perl/namespace-autoclean-0.08

"
DEPEND="
	>=dev-perl/File-Find-Rule-0.30
	>=dev-perl/File-Find-Rule-Perl-1.09
	virtual/perl-Module-Build
	>=dev-perl/Path-Class-0.17
	dev-perl/Test-Kwalitee
	>=virtual/perl-Test-Simple-0.92
	dev-perl/Test-Perl-Critic
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
