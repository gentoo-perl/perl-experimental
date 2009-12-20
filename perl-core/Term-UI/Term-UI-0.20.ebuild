# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=KANE
inherit perl-module

DESCRIPTION="Term::ReadLine UI made easy"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Locale-Maketext-Simple
	virtual/perl-Log-Message-Simple
	virtual/perl-Params-Check"
DEPEND="${RDEPEND}"

SRC_TEST=do
