# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="KAWASAKI"
inherit perl-module

DESCRIPTION="Parse/write/merge/edit RSS/RDF/Atom syndication feeds"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-perl/XML-TreePP-0.39"
RDEPEND="${DEPEND}"

SRC_TEST="do"
