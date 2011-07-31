# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=0.913
inherit perl-module

DESCRIPTION="A non-blocking getaddrinfo() resolver"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/POE-1.311.0
	>=virtual/perl-Scalar-List-Utils-1.23 $(comment Scalar::Util 1.230.0)
	>=dev-perl/Socket-GetAddrInfo-0.190.0
	>=virtual/perl-Storable-2.18 $(comment 2.180.0)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
	>=virtual/perl-Time-HiRes-1.97.11 $(comment 1.971.100)
"
DEPEND="${RDEPEND}
	$(comment configure)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
"

SRC_TEST="online"
