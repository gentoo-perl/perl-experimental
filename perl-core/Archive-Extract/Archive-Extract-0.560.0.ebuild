# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.56
inherit perl-module

DESCRIPTION="A generic archive extracting mechanism"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
RDEPEND="
	$(comment IPC::Cmd 0.64)
	>=virtual/perl-IPC-Cmd-0.640.0

	$(comment Test::More)
	virtual/perl-Test-Simple

	$(comment File::Spec 0.82)
	>=virtual/perl-File-Spec-0.82 $(comment 0.820.0)

	$(comment File::Path)
	virtual/perl-File-Path

	$(comment File::Basename)

	$(comment Params::Check 0.07)
	>=virtual/perl-Params-Check-0.07 $(comment 0.70.0)

	$(comment Module::Load::Conditional 0.04)
	>=virtual/perl-Module-Load-Conditional-0.400 $(comment 0.400.0)

	$(comment Locale::Maketext::Simple)
	virtual/perl-Locale-Maketext-Simple"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

SRC_TEST=do
