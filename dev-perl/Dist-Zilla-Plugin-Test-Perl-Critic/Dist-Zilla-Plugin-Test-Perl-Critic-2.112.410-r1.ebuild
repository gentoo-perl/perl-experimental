# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=JQUELIN
MODULE_VERSION=2.112410
inherit perl-module

DESCRIPTION="tests to check your code against best practices"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Data::Section 0.004)
	>=dev-perl/Data-Section-0.4.0

	$(comment Dist::Zilla::File::InMemory)
	$(comment Dist::Zilla::Role::FileGatherer)
	$(comment Dist::Zilla::Role::TextTemplate)
	>=dev-perl/Dist-Zilla-4.0

	$(comment Moose)
	$(comment Moose::Util)
	dev-perl/Moose

	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean

	$(comment perl 5.008)
	>=dev-lang/perl-5.8.0

	$(comment strict)
	$(comment warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment build)
	$(comment File::Find)

	$(comment File::Path)
	virtual/perl-File-Path

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment Module::Build 0.3601)
	>=dev-perl/Module-Build-0.36.01

	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox

	$(comment Test::DZil)
	dev-perl/Dist-Zilla

	$(comment Test::More 0.94)
	>=virtual/perl-Test-Simple-0.94

	$(comment autodie)
	virtual/perl-autodie

	$(comment configure)
	$(comment Module::Build 0.3601)
	>=dev-perl/Module-Build-0.36.01
"
RDEPEND="
	${COMMON_DEPEND}
"
