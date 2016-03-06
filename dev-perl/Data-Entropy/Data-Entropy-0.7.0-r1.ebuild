# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.007
inherit perl-module

DESCRIPTION="entropy (randomness) management"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	dev-perl/Crypt-Rijndael
	>=dev-perl/Data-Float-0.8.0
	$(comment virtual/perl-Errno 1.0.0)
	$(comment virtual/perl-Exporter)
	>=dev-perl/HTTP-Lite-2.200.0
	>=virtual/perl-IO-1.03 $(comment 1.30.0 IO::File)
	dev-perl/Params-Classify
	$(comment virtual/perl-constant)
	$(comment virtual/perl-integer)
	virtual/perl-parent
	$(comment perl 5.6 w/ strict and warnings)

	$(comment CONFLICTS)
	!<virtual/perl-Math-BigInt-1.60 $(comment 1.600.0)
	!<virtual/perl-Math-BigRat-0.04 $(comment 0.40.0)
	!<perl-core/Math-BigRat-0.04 $(comment 0.40.0)
"
DEPEND="
	${COMMON_DEPEND}

	$(comment CONFIGURE REQUIRES)
	dev-perl/Module-Build
	$(comment perl 5.6 w/ strict and warnings)

	$(comment BUILD REQUIRES)
	dev-perl/Crypt-Rijndael
	>=dev-perl/Data-Float-0.8.0
	>=virtual/perl-IO-1.03 $(comment 1.30.0 IO::File)
	dev-perl/Module-Build
	virtual/perl-Test-Simple $(comment Test::More)
	$(comment virtual/perl-constant)
	$(comment perl 5.6 w/ strict and warnings)
"
RDEPEND="
	${COMMON_DEPEND}
"
