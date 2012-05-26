# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="BPOWERS"
MODULE_VERSION="0.55"
inherit perl-module

DESCRIPTION="Expiry plug-in for Memoize that adds LRU cache expiration"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

SRC_TEST="do"
