# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DANJOU
inherit perl-module

DESCRIPTION="A Perl module for using Google Spreadsheets API"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/XML-Atom
	dev-perl/Net-Google-AuthSub
	>=dev-perl/Net-Google-DataAPI-0.19
	dev-perl/URI
	dev-perl/namespace-autoclean
	dev-perl/Any-Moose
	|| (
		>=dev-perl/Moose-0.56
		>=dev-perl/Mouse-0.51
	)"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Exception
		dev-perl/Test-MockModule
		dev-perl/Test-MockObject
	)"
