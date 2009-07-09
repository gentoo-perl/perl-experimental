# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ASCOPE
inherit perl-module

DESCRIPTION="Log messages via Jabber"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"
#SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/log-dispatch-2.01
	>=dev-perl/Net-Jabber-1.26"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
