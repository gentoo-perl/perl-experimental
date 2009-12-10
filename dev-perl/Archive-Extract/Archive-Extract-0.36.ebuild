# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BINGOS
inherit perl-module

DESCRIPTION="A generic archive extracting mechanism"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=virtual/perl-IPC-Cmd-0.42
	>=virtual/perl-File-Spec-0.82
	>=virtual/perl-Params-Check-0.07
	>=virtual/perl-Module-Load-Conditional-0.04
	virtual/perl-Locale-Maketext-Simple"
DEPEND="${RDEPEND}"

SRC_TEST=do
