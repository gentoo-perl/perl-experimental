# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=AWNCORP
MODULE_VERSION=1.26
inherit perl-module

DESCRIPTION="Lightweight To-The-Point Email"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Authen-SASL
	dev-perl/Email-AddressParser
	dev-perl/Email-Stuffer
	dev-perl/File-Slurp
	>=dev-perl/Hash-Merge-Simple-0.51.0
	dev-perl/IO-Socket-SSL
	>=dev-perl/Moo-2.0.2
	dev-perl/Net-SMTP-SSL
	dev-perl/Net-SMTP-TLS
	dev-perl/Net-SSLeay
"

DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
