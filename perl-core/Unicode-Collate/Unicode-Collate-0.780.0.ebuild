# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=SADAHIRO
MODULE_VERSION=0.78
#SRC_URI="mirror://cpan/authors/id/S/SA/SADAHIRO/Unicode-Collate-${MODULE_VERSION}-withoutworldwriteables.tar.gz"
inherit perl-module

DESCRIPTION="Unicode Collation Algorithm"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

comment() { echo ''; }

COMMON_DEPEND="
	$(comment Carp)
	$(comment constant)
	$(comment DynaLoader)
	virtual/perl-File-Spec
	$(comment Test)
	$(comment warnings)
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
