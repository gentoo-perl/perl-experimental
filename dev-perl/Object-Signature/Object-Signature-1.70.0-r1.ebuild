# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ADAMK
MODULE_VERSION="1.07"
inherit perl-module

DESCRIPTION="Generate cryptographic signatures for objects"

IUSE="test"

SLOT="0"

KEYWORDS="~amd64 ~x86"

comment() { echo ''; }
RDEPEND="
	>=virtual/perl-Digest-MD5-2.00 $(comment 2.0.0 )
	>=virtual/perl-Storable-2.110 $(comment 2.110.0 )
	>=dev-lang/perl-5.5.0
"
DEPEND="
	${RDEPEND}
	$(comment CONFIGURE REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
	$(comment TEST REQUIRES)
	test? (
		>=virtual/perl-Test-Simple-0.47 $(comment 0.470.0)
	)
"
