# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.2
inherit perl-module

DESCRIPTION="Unicode aware Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
RDEPEND="
	$(comment Encode 2.21)
	>=virtual/perl-Encode-2.21
	$(comment Catalyst 5.80)
	>=dev-perl/Catalyst-Runtime-5.800.0
	$(comment LWP 5.828)
	>=dev-perl/libwww-perl-5.828
	$(comment URI 1.36)
	>=dev-perl/URI-1.36
	$(comment Try::Tiny)
	dev-perl/Try-Tiny
"
DEPEND="
	${RDEPEND}
	test? (
		$(comment Test::More 0.88)
		>=virtual/perl-Test-Simple-0.88
		$(comment IO::Scalar)
		dev-perl/IO-stringy
		$(comment HTTP::Status)
		>=dev-perl/libwww-perl-6.0.0
		dev-perl/HTTP-Message
	)
"
SRC_TEST=do
