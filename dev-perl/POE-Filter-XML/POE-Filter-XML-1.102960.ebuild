# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NPEREZ
inherit perl-module

DESCRIPTION="A POE Filter for parsing XML"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-perl/Moose
	dev-perl/MooseX-Declare
	dev-perl/MooseX-InsideOut
	dev-perl/MooseX-NonMoose
	dev-perl/MooseX-Types
	dev-perl/POE
	dev-perl/Try-Tiny
	dev-perl/XML-LibXML
	dev-perl/XML-SAX"
DEPEND="${RDEPEND}"
