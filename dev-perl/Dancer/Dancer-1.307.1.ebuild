# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=SUKRIA
MODULE_VERSION=1.3071
inherit perl-module

DESCRIPTION="lightweight yet powerful web application framework"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ''; }

COMMON_DEPEND="
	dev-perl/libwww-perl
	>=dev-perl/HTTP-Body-1.70.0
	>=dev-perl/HTTP-Server-Simple-PSGI-0.110.0
	dev-perl/MIME-Types
	dev-perl/URI
	$(comment File::Basename )
	virtual/perl-File-Spec
	virtual/perl-Encode
	virtual/perl-Time-HiRes

"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.94 $(comment 0.940.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
