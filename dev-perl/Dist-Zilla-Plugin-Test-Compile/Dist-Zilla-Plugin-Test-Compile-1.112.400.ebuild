# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.112400
inherit perl-module

DESCRIPTION="common tests to check syntax of your modules
"
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
	dev-perl/Dist-Zilla

	$(comment Moose)
	dev-perl/Moose

	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean

	$(comment perl 5.008)
	$(comment strict)
	$(comment warnings)
	>=dev-lang/perl-5.8.0
"
DEPEND="
	$(comment build)
	$(comment Dist::Zilla::Tester)
	dev-perl/Dist-Zilla

	$(comment File::Find)

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment Test::More 0.88)
	>=virtual/perl-Test-Simple-0.88

	$(comment configure)
	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01

	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
