# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=NPEREZ
MODULE_VERSION=1.140700
inherit perl-module

DESCRIPTION="XML Parsing for the POE Framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
# XML-LibXML-Element -> XML-LibXML
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Exporter
	dev-perl/Moose
	dev-perl/MooseX-InsideOut
	dev-perl/MooseX-NonMoose
	dev-perl/POE
	dev-perl/XML-LibXML
	dev-perl/XML-SAX-Base
	virtual/perl-constant
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-Test-Simple
	)
"
