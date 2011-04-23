# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION="release tests for your changelog"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Dist-Zilla
	$(comment ^^ Dist::Zilla::Plugin::InlineFiles)
	$(comment ^^ Dist::Zilla::Role::FileMunger)
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Path
	virtual/perl-File-Temp
	dev-perl/Moose-Autobox
	dev-perl/CPAN-Changes $(comment Test::CPAN::Changes)
	>=dev-perl/Dist-Zilla-4.200.2 $(comment Test::DZil)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	dev-perl/autodie
	$(comment CONFIGURE REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
