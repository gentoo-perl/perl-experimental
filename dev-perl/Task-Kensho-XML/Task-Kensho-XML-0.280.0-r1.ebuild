# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (XML)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+libxml +libxslt +sax +xmlgeneratorperldata +saxwriter"
COMMON_DEPEND="
	libxml? ( dev-perl/XML-LibXML )
	libxslt? ( dev-perl/XML-LibXSLT )
	sax? ( dev-perl/XML-SAX )
	xmlgeneratorperldata? ( dev-perl/XML-Generator-PerlData )
	saxwriter? ( dev-perl/XML-SAX-Writer )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
