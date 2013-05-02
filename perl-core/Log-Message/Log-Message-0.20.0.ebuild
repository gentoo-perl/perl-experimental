# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=KANE
MODULE_VERSION="0.02"
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
