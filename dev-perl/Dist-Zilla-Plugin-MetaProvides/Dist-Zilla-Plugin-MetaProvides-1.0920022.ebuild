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
	>=dev-perl/MooseX-Has-Sugar-0.0300
	dev-perl/MooseX-Types
	dev-perl/Module-Extract-VERSION
	dev-perl/aliased
	>=dev-perl/Class-Discover-1.000000
	dev-perl/Path-Class
	dev-perl/List-MoreUtils
	>=dev-perl/Moose-0.65
	dev-perl/File-Find-Rule
	dev-perl/namespace-autoclean
	dev-perl/File-Find-Rule-Perl
	dev-perl/Moose-Autobox
	virtual/perl-Test-Simple
	dev-perl/Module-Extract-Namespaces
	>=dev-perl/Dist-Zilla-0.091840
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
