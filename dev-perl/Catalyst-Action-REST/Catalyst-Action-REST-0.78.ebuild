# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Automated REST Method Dispatching  "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test" # TODO: features here
COMMON_DEPEND="
	>=dev-perl/Catalyst-Runtime-5.7001
	>=dev-perl/Params-Validate-0.76
	>=dev-perl/YAML-Syck-0.67
	virtual/perl-Module-Pluggable
	>=dev-perl/libwww-perl-2.033
	>=dev-perl/Data-Serializer-0.36
	>=dev-perl/Class-Inspector-1.13
	dev-perl/URI-Find
	>=dev-perl/MRO-Compat-0.10
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Moose
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
