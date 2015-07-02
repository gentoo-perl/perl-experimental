# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ASCOPE
MODULE_VERSION=0.3
inherit perl-module

DESCRIPTION="Log messages via Jabber"

SLOT="0"
KEYWORDS="~amd64 ~x86"
PERL_RESTRICT="network-test"

IUSE="test"
RDEPEND=">=dev-perl/Log-Dispatch-2.10.0
	>=dev-perl/Net-Jabber-1.260.0"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( virtual/perl-Test-Simple )"
