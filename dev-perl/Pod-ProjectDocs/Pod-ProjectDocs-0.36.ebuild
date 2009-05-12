# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=LYOKATO
inherit perl-module

DESCRIPTION="generates CPAN like pod pages"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Class-Accessor
	dev-perl/Class-Data-Inheritable
	virtual/perl-File-Spec
	>=dev-perl/JSON-2.04
	virtual/perl-MIME-Base64
	dev-perl/Readonly
	dev-perl/Template-Toolkit
	dev-perl/URI
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
