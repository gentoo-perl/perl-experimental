# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NEELY
inherit perl-module

DESCRIPTION="Modules that serialize data structures  "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-Module-Build
	virtual/perl-Digest-SHA
	virtual/perl-AutoLoader
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Spec
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
