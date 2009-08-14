# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="A Catalyst::Request::REST subclass for dealing with browsers"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Catalyst-Action-REST-0.41
	dev-perl/Moose
"
# virtual/perl-CPAN
DEPEND="
	${COMMON_DEPEND}
	dev-perl/libwww-perl
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
