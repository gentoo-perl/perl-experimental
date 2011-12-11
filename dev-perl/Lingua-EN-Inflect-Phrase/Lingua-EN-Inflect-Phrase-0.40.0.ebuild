# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="RKITOVER"
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Inflect short English Phrases"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/Lingua-EN-Inflect-1.89.1
	>=dev-perl/Lingua-EN-Inflect-Number-1.100.0
	>=dev-perl/Lingua-EN-Tagger-0.150.0"
DEPEND="${RDEPEND}"

SRC_TEST="do"
