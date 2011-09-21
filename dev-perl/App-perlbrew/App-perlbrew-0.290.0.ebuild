# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true; }
COMMON_DEPEND="
	$(comment File::Path::Tiny)
	dev-perl/File-Path-Tiny

	$(comment Devel::PatchPerl 0.46)
	>=dev-perl/Devel-PatchPerl-0.460.0

	$(comment Cwd 3.26)
	>=virtual/perl-File-Spec-3.26
"
DEPEND="
	test? (
		$(comment Test::Simple 0.98)
		>=virtual/perl-Test-Simple-0.980.0

		$(comment Test::More)
		virtual/perl-Test-Simple

		$(comment Test::Output)
		dev-perl/Test-Output

		$(comment Test::Exception)
		dev-perl/Test-Exception

		$(comment Test::Spec)
		dev-perl/Test-Spec

		$(comment Path::Class)
		dev-perl/Path-Class

		$(comment IO::All)
		dev-perl/IO-All

		$(comment File::Temp)
		virtual/perl-File-Temp
	)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
