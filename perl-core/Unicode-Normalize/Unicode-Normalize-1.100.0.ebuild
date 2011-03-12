# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=SADAHIRO
SRC_URI="mirror://cpan/authors/id/S/SA/SADAHIRO/Unicode-Normalize-1.10-withoutworldwriteables.tar.gz"
MODULE_VERSION="1.10"
inherit perl-module

DESCRIPTION="Unicode Normalization Forms"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

comment() { echo ''; }

COMMON_DEPEND="
	$(comment bytes)
	$(comment Carp)
	$(comment constant)
	$(comment DynaLoader)
	$(comment Exporter)
	$(comment File::Copy)
	virtual/perl-File-Spec
	$(comment strict)
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
