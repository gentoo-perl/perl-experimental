# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=DANJOU
MODULE_VERSION=0.1501
inherit perl-module

DESCRIPTION="A Perl module for using Google Spreadsheets API"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	virtual/perl-Carp
	dev-perl/XML-Atom
	dev-perl/Net-Google-AuthSub
	>=dev-perl/Net-Google-DataAPI-0.270.0
	dev-perl/URI
	dev-perl/namespace-autoclean
	>=dev-perl/Any-Moose-0.40.0
	|| (
		>=dev-perl/Moose-0.560.0
		>=dev-perl/Mouse-0.510.0
	)"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Exception
		dev-perl/Test-MockModule
		dev-perl/Test-MockObject
	)"
