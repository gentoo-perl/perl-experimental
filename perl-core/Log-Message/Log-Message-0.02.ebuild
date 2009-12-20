# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=KANE
inherit perl-module

DESCRIPTION="A generic message storing mechanism"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Params-Check
	virtual/perl-Module-Load
	virtual/perl-File-Spec
	virtual/perl-Locale-Maketext-Simple"
DEPEND="${RDEPEND}"

SRC_TEST=do
