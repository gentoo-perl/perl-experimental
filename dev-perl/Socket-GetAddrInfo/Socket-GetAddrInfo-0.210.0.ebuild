# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.21
inherit perl-module

DESCRIPTION="RFC 2553's getaddrinfo and getnameinfo functions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	$(comment virtual/perl-Exporter-5.570.0)
	virtual/perl-XSLoader
"
DEPEND="${RDEPEND}
	$(comment Configure -- )
	>=dev-perl/ExtUtils-CChecker-0.60.0
	virtual/perl-ExtUtils-CBuilder
	$(comment Build -- )
	>=dev-perl/ExtUtils-CChecker-0.60.0
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-Module-Build
	$(comment Module::Build::Compat from Module-Build )
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	virtual/perl-Test-Simple $(comment Test::More)
"
SRC_TEST="do"
