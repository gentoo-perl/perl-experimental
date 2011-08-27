# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.112380
inherit perl-module

DESCRIPTION="update your git repository after release"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment REQUIRES)
	$(comment Class::MOP)
	|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )

	$(comment Cwd)
	virtual/perl-File-Spec

	$(comment DateTime)
	dev-perl/DateTime

	$(comment Dist::Zilla 4)
	$(comment Dist::Zilla::Role::AfterBuild)
	$(comment Dist::Zilla::Role::AfterMint)
	$(comment Dist::Zilla::Role::AfterRelease)
	$(comment Dist::Zilla::Role::BeforeRelease)
	$(comment Dist::Zilla::Role::PluginBundle)
	$(comment Dist::Zilla::Role::VersionProvider)
	>=dev-perl/Dist-Zilla-4.0.0

	$(comment File::Spec::Functions)
	virtual/perl-File-Spec

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment File::chdir)
	dev-perl/File-chdir

	$(comment Git::Wrapper)
	dev-perl/Git-Wrapper

	$(comment IPC::Open3)

	$(comment Moose)
	dev-perl/Moose

	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox

	$(comment Moose::Role)
	dev-perl/Moose

	$(comment MooseX::Has::Sugar)
	dev-perl/MooseX-Has-Sugar

	$(comment MooseX::Types::Moose)
	dev-perl/MooseX-Types

	$(comment Path::Class::Dir)
	dev-perl/Path-Class

	$(comment String::Formatter)
	dev-perl/String-Formatter

	$(comment Version::Next)
	dev-perl/Version-Next

	$(comment namespace::autoclean 0.09)
	>=dev-perl/namespace-autoclean-0.09

	$(comment perl 5.010)
	>=dev-lang/perl-5.10.0

	$(comment strict)

	$(comment version 0.80)
	>=virtual/perl-version-0.80

	$(comment warnings)
"
DEPEND="
	$(comment BUILD)

	$(comment Dist::Zilla::Role::Releaser)
	$(comment Dist::Zilla::Tester)
	dev-perl/Dist-Zilla

	$(comment File::Copy)

	$(comment File::Copy::Recursive)
	dev-perl/File-Copy-Recursive

	$(comment File::Find)

	$(comment File::Path)
	virtual/perl-File-Path

	$(comment File::Which)
	dev-perl/File-Which

	$(comment File::pushd)
	dev-perl/File-pushd

	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment Test::Exception)
	dev-perl/Test-Exception

	$(comment Test::More 0.88)
	>=virtual/perl-Test-Simple-0.88

	$(comment CONFIGURE)
	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01

	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
