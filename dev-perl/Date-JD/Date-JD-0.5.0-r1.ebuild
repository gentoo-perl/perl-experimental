# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.005
inherit perl-module

DESCRIPTION="conversion between flavours of Julian Date"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment CORE Carp)
	$(comment CORE Exporter)
	virtual/perl-parent
	>=dev-lang/perl-5.6.0
	$(comment CORE strict)
	$(comment CORE warnings)

	$(comment CONFLICTS)
	!<perl-core/Math-BigRat-0.04 $(comment 0.40.0)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	dev-perl/Module-Build
	virtual/perl-Test-Simple
	>=dev-lang/perl-5.6.0
	$(comment CORE strict)
	$(comment CORE warnings)

	$(comment CONFIGURE REQUIRES)
	dev-perl/Module-Build
	>=dev-lang/perl-5.6.0
	$(comment CORE strict)
	$(comment CORE warnings)
"
RDEPEND="
	${COMMON_DEPEND}
"
