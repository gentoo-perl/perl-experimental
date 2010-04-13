# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MAKAMAKA
inherit perl-module

DESCRIPTION="Perl implementation of JSON-RPC 1.1 protocol"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/JSON
	dev-perl/libwww-perl
	virtual/perl-CGI"
DEPEND="${RDEPEND}"

SRC_TEST=do
