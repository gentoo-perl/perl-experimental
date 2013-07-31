# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_VERSION=0.37
MODULE_AUTHOR=LBROCARD
inherit perl-module

DESCRIPTION="Easy application-level caching"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	dev-perl/File-Find-Rule
	dev-perl/File-HomeDir
	virtual/perl-Storable
	dev-perl/libwww-perl
	dev-perl/Class-Accessor-Chained
	dev-perl/Path-Class
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
