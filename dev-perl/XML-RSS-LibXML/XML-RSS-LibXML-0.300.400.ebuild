# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_VERSION=0.3004
MODULE_AUTHOR=DMAKI
inherit perl-module

DESCRIPTION="XML::RSS with XML::LibXML"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/Class-Accessor
	dev-perl/DateTime-Format-Mail
	dev-perl/DateTime-Format-W3CDTF
	dev-perl/UNIVERSAL-require
	>=dev-perl/XML-LibXML-1.660.0"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
