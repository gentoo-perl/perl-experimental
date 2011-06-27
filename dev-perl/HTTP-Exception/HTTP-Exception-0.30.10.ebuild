# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=TMUELLER
MODULE_VERSION=0.03001
inherit perl-module

DESCRIPTION="throw HTTP-Errors as (Exception::Class-) Exceptions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Exception-Class-1.29
	|| ( >=dev-perl/HTTP-Message-5.817.0 >=dev-perl/libwww-perl-5.817.0 )
	$(comment ^^ HTTP::Status)
	>=virtual/perl-Scalar-List-Utils-1.220.0 $(comment scalar::util)
	$(comment virtual/perl-base)
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
		>=dev-perl/Test-Exception-0.29 $(comment 0.290.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
