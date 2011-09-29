# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DERF
MODULE_VERSION=1.06
inherit perl-module

DESCRIPTION="Inofficial interface to the efa.vrr.de German itinerary service"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/libwww-perl
	dev-perl/Class-Accessor
	virtual/perl-Getopt-Long
	dev-perl/Exception-Class
	dev-perl/XML-LibXML
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.36
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Compile
		dev-perl/Test-Fatal
		virtual/perl-Test-Simple
	)
"

SRC_TEST=do
