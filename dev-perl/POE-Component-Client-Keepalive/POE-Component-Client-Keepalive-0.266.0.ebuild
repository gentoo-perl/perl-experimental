# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=0.266
inherit perl-module

DESCRIPTION="manage connections, with keep-alive"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/POE-1.299
		>=dev-perl/POE-Component-Resolver-0.910.0
		dev-perl/Net-IP"
DEPEND="${RDEPEND}"

SRC_TEST="do"
