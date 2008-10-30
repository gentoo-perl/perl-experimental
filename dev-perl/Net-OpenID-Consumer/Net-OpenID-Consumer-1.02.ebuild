# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=MART
inherit perl-module

DESCRIPTION="Library for consumers of OpenID identities"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/libwww-perl
	dev-perl/Digest-SHA1
	dev-perl/URI
	dev-perl/XML-Simple
	dev-perl/Crypt-DH
"

