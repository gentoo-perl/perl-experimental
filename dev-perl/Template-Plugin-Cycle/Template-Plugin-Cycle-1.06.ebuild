# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Cyclically insert into a Template from a sequence of values"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Template-Toolkit
	virtual/perl-File-Spec
	>=dev-perl/Params-Util-0.20"
DEPEND="${RDEPEND}"

SRC_TEST=do
