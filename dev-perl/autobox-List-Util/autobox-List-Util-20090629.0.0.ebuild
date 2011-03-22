# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=COWENS
MODULE_VERSION=20090629
inherit perl-module

DESCRIPTION="bring the List::Util functions to autobox"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	virtual/perl-Test-Simple
	virtual/perl-Module-Load
	virtual/perl-Scalar-List-Utils $(comment List::Util)
	dev-perl/autobox
	$(comment CONFIG REQUIRES)
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
