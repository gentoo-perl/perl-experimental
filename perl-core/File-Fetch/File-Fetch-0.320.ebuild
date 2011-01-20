# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.32
inherit perl-module

DESCRIPTION="A generic file fetching mechanism"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-File-Path
	virtual/perl-File-Spec
	virtual/perl-IPC-Cmd
	virtual/perl-Locale-Maketext-Simple
	virtual/perl-Module-Load-Conditional
	virtual/perl-Params-Check"
DEPEND="${RDEPEND}"

SRC_TEST=online
