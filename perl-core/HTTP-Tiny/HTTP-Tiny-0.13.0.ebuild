# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.013
inherit perl-module

DESCRIPTION="A small, simple, correct HTTP/1.1 client"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ''; }

COMMON_DEPEND="
	$(comment Carp)
	virtual/perl-IO
	$(comment ^^ IO::Socket)
	virtual/perl-Time-Local
"
DEPEND="
	${COMMON_DEPEND}
	$(comment Data-Dumper)
	$(comment Exporter)
	$(comment File-Basename)
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-IO
	$(comment ^^ IO::Dir )
	$(comment ^^ IO::File )
	$(comment ^^ IO::Socket::INET )
	test? (
		>=virtual/perl-Test-Simple-0.88
	)
	>=virtual/perl-ExtUtils-MakeMaker-6.31
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
