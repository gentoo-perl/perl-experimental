# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MITHALDU
MODULE_VERSION=2.34
inherit perl-module

DESCRIPTION="Parse 02packages.details.txt.gz"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"
comment() { true;}
IUSE="test"
RDEPEND="
	$(comment Archive::Peek)
	dev-perl/Archive-Peek

	$(comment Compress::Zlib)
	virtual/perl-IO-Compress

	$(comment CPAN::DistnameInfo)
	dev-perl/CPAN-DistnameInfo

	$(comment File::Slurp)
	dev-perl/File-Slurp

	$(comment Moose)
	dev-perl/Moose

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment Test::InDistDir)
	dev-perl/Test-InDistDir

	$(comment Test::More)
	virtual/perl-Test-Simple

	$(comment version)
	virtual/perl-version
"
DEPEND="${RDEPEND}
	$(comment ExtUtils::MakeMaker)
	virtual/perl-ExtUtils-MakeMaker
"
