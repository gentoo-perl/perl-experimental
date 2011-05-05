# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.009
inherit perl-module

DESCRIPTION="the Eksblowfish block cipher"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	>=dev-perl/Class-Mix-0.001 $(comment 0.1.0)
	$(comment virtual/perl-Exporter)
	>=virtual/perl-MIME-Base64-2.21 $(comment 2.210.0)
	virtual/perl-XSLoader
	virtual/perl-parent
	$(comment perl 5.6)
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIGURE REQUIRES )
	virtual/perl-Module-Build
	$(comment perl 5.6)
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)

	$(comment BUILD REQUIRES)
	>=virtual/perl-ExtUtils-CBuilder-0.15 $(comment 0.150.0)
	virtual/perl-Module-Build
	virtual/perl-Test-Simple $(comment Test::More)
	$(comment perl 5.6)
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
