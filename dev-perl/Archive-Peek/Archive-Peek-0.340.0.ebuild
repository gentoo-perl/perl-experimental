# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=LBROCARD
MODULE_VERSION=0.34
inherit perl-module

DESCRIPTION="Peek into archives without extracting them"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Archive::Tar)
	virtual/perl-Archive-Tar

	$(comment Archive::Zip)
	dev-perl/Archive-Zip

	$(comment Moose)
	dev-perl/Moose

	$(comment MooseX::Types::Path::Class)
	dev-perl/MooseX-Types-Path-Class

	$(comment Test::More)
	virtual/perl-Test-Simple
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
