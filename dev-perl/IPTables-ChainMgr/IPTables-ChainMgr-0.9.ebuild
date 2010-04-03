# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="MRASH"
inherit perl-module

DESCRIPTION="Perl extension for manipulating iptables policies"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/IPTables-Parse-0.7
	>=dev-perl/Net-IPv4Addr-0.10"
DEPEND="${RDEPEND}"

SRC_TEST=do
