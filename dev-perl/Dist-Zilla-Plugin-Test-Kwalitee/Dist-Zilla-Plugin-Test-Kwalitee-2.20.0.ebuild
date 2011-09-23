# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=AYOUNG
MODULE_VERSION=2.020000
inherit perl-module

DESCRIPTION="Release tests for kwalitee"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Data::Section)
	dev-perl/Data-Section

	$(comment Dist::Zilla::File::InMemory)
	$(comment Dist::Zilla::Role::FileGatherer)
	$(comment Dist::Zilla::Role::TextTemplate)
	dev-perl/Dist-Zilla

	$(comment Moose)
	dev-perl/Moose

	$(comment Test::Kwalitee)
	dev-perl/Test-Kwalitee

	$(comment strict)
	$(comment warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment build)
	$(comment Capture::Tiny)
	dev-perl/Capture-Tiny

	$(comment Carp)

	$(comment Dist::Zilla::Tester)
	dev-perl/Dist-Zilla

	$(comment English)

	$(comment File::Find)

	$(comment File::Path)
	virtual/perl-File-Path

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment Scalar::Util)
	virtual/perl-Scalar-List-Utils

	$(comment Test::Dzil)
	dev-perl/Dist-Zilla

	$(comment Test::More 0.96)
	>=virtual/perl-Test-Simple-0.96

	$(comment autodie)
	dev-perl/autodie

	$(comment configure)
	$(comment ExtUtils::MakeMaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	!!dev-perl/Dist-Zilla-Plugin-KwaliteeTests
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
