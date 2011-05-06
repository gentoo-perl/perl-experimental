# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.52
inherit perl-module

DESCRIPTION="A generic archive extracting mechanism"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=virtual/perl-IPC-Cmd-0.640.0
	>=virtual/perl-File-Spec-0.82 $(comment 0.820.0)
	virtual/perl-File-Path
	$(comment virtual/perl-File-Basename)
	>=virtual/perl-Params-Check-0.07 $(comment 0.70.0)
	>=virtual/perl-Module-Load-Conditional-0.400 $(comment 0.400.0)
	virtual/perl-Locale-Maketext-Simple"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Test-Simple
	)
"

SRC_TEST=do
