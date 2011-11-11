# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DANIELTWC
inherit perl-module

DESCRIPTION="Helper for LDAP models."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.620.0
	dev-perl/Class-Accessor
	dev-perl/MRO-Compat
	dev-perl/Data-Page
	>=dev-perl/perl-ldap-0.34
"
DEPEND="
	${RDEPEND}
	virtual/perl-Test-Simple
"
SRC_TEST=do
