# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DANJOU
MODULE_VERSION="0.25"
inherit perl-module

DESCRIPTION="Base implementations for modules to negotiate with Google Data APIs"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/XML-Atom
	>=dev-perl/Net-Google-AuthSub-0.500.0
	dev-perl/Digest-SHA1
	dev-perl/Net-OAuth
	dev-perl/libwww-perl
	dev-perl/LWP-Protocol-https
	dev-perl/URI
	dev-perl/Lingua-EN-Inflect-Number
	dev-perl/namespace-autoclean
	dev-perl/Any-Moose
	|| (
		>=dev-perl/Moose-0.560.0
		>=dev-perl/Mouse-0.510.0
	)"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Warn
		dev-perl/UNIVERSAL-isa
		dev-perl/UNIVERSAL-can
		dev-perl/Test-MockObject
		dev-perl/Test-MockModule
		dev-perl/Test-Exception
		dev-perl/Text-Glob
	)"
