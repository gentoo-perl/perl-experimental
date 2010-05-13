# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="Template plugin to specify encoding"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Template-Toolkit
	virtual/perl-Encode"
DEPEND="${RDEPEND}"

SRC_TEST=do
