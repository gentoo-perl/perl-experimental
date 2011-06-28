# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=NEELY
MODULE_VERSION="0.52"
inherit perl-module

DESCRIPTION="Modules that serialize data structures  "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# NOTE: Don't add the recommended list here, its a waste of time. 
COMMON_DEPEND="
	virtual/perl-Module-Build
	virtual/perl-Digest-SHA
	virtual/perl-AutoLoader
	virtual/perl-IO
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Spec
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
