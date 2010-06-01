# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="RKITOVER"
inherit perl-module

DESCRIPTION="Inflect short English Phrases"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/Lingua-EN-Inflect-1.89.1
	>=dev-perl/Lingua-EN-Inflect-Number-1.1
	>=dev-perl/Lingua-EN-Tagger-0.15"
DEPEND="${RDEPEND}"

SRC_TEST="do"
