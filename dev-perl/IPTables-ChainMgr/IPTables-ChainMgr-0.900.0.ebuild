# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="MRASH"
MODULE_VERSION="0.9"
inherit perl-module

DESCRIPTION="Perl extension for manipulating iptables policies"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/IPTables-Parse-0.700.0
	>=dev-perl/Net-IPv4Addr-0.100.0
"
DEPEND="${RDEPEND}"

SRC_TEST=do
