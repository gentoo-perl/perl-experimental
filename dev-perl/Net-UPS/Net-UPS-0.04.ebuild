# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="SHERZODR"
inherit perl-module

DESCRIPTION="Implementation of UPS Online Tools API in Perl"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="
	dev-perl/libwww-perl
	dev-perl/XML-Simple
	dev-perl/Crypt-SSLeay
"

SRC_TEST=do
