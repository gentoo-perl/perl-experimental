# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.48
inherit perl-module

DESCRIPTION='Generic file fetching code'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# File::Basename -> perl
# File::Copy -> perl
# Test::More -> perl-Test-Simple
RDEPEND="
	virtual/perl-File-Path
	>=virtual/perl-File-Spec-0.820.0
	>=virtual/perl-IPC-Cmd-0.420.0
	virtual/perl-Locale-Maketext-Simple
	>=virtual/perl-Module-Load-Conditional-0.40.0
	>=virtual/perl-Params-Check-0.70.0
	virtual/perl-Test-Simple
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
"
SRC_TEST="network parallel"
