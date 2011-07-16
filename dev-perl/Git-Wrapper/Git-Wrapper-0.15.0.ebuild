# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GENEHACK
MODULE_VERSION=0.015
inherit perl-module

DESCRIPTION="wrap git(7) command-line interface"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/File-pushd
	$(comment virtual/perl-IPC-Open3)
	$(comment virtual/perl-Symbol)
	$(comment virtual/perl-overload)
	dev-vcs/git
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	test? (
		virtual/perl-File-Path
		virtual/perl-File-Spec
		virtual/perl-File-Temp
		virtual/perl-IO $(comment IO::File)
		$(comment virtual/perl-POSIX)
		dev-perl/Test-Deep
		virtual/perl-Test-Simple $(comment Test::More)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
