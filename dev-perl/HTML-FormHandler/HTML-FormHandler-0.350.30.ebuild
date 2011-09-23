# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GSHANK
MODULE_VERSION=0.35003
inherit perl-module

DESCRIPTION="form handler written in Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true; }
COMMON_DEPEND="
	$(comment Carp)

	$(comment Class::Load 0.06)
	>=dev-perl/Class-Load-0.06
	$(comment DateTime)
	dev-perl/DateTime
	$(comment DateTime::Format::Strptime)
	dev-perl/DateTime-Format-Strptime
	$(comment Email::Valid)
	dev-perl/Email-Valid
	$(comment File::ShareDir)
	dev-perl/File-ShareDir
	$(comment File::Spec)
	virtual/perl-File-Spec
	$(comment Locale::Maketext 1.09)
	>=virtual/perl-locale-maketext-1.90.0
	$(comment Moose 2.0007)
	>=dev-perl/Moose-2.0.700
	$(comment MooseX::Getopt 0.16)
	>=dev-perl/MooseX-Getopt-0.160.0
	$(comment MooseX::Types 0.20)
	>=dev-perl/MooseX-Types-0.200.0
	$(comment MooseX::Types::Common)
	dev-perl/MooseX-Types-Common
	$(comment MooseX::Types::LoadableClass 0.006)
	>=dev-perl/MooseX-Types-LoadableClass-0.6.0
	$(comment Try::Tiny)
	dev-perl/Try-Tiny
	$(comment aliased)
	dev-perl/aliased
	$(comment namespace::autoclean 0.09)
	>=dev-perl/namespace-autoclean-0.90.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment --configure)
	$(comment ExtUtils::MakeMaker 6.30)
	>=virtual/perl-ExtUtils-MakeMaker-6.30
	$(comment File::ShareDir::Install 0.03)
	>=dev-perl/File-ShareDir-Install-0.30.0
	$(comment --build)
	$(comment Test::Differences)
	dev-perl/Test-Differences
	$(comment Test::Exception)
	dev-perl/Test-Exception
	$(comment Test::Memory::Cycle)
	>=dev-perl/Test-Memory-Cycle-1.40.0
	$(comment Test::More 0.94)
	>=virtual/perl-Test-Simple-0.94
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
