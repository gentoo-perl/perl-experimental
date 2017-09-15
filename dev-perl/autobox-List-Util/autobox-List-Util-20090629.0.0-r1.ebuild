# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=COWENS
MODULE_VERSION=20090629
inherit perl-module

DESCRIPTION="bring the List::Util functions to autobox"

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
	dev-perl/Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
