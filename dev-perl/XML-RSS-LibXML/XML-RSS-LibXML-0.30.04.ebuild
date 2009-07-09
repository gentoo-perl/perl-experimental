# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit versionator
MY_P="${PN}-$(delete_version_separator 2)"
S="${WORKDIR}/${MY_P}"

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
	>=dev-perl/XML-LibXML-1.66"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
