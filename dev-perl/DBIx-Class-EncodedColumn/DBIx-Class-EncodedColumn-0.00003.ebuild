# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

MODULE_AUTHOR=MSTROUT
inherit perl-module

DESCRIPTION="Automatic digest columns."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.06002
	>=dev-perl/Sub-Name-0.04
"
src_unpack(){
	perl-module_src_unpack;
	# DEVNOTE: This bug should be fixed with 0.00004 comes out.
	# Tests fail without this.
	einfo "Copying Files into Dist required for tests to pass"
	einfo "Should be fixed by 0.00004"
	cp "${FILESDIR}/${PV}/pubring.gpg" "${S}/t/pubring.gpg" || die "Cant Copy Files"
	cp "${FILESDIR}/${PV}/secring.gpg" "${S}/t/secring.gpg" || die "Cant Copy Files"
}
DEPEND="${RDEPEND}"
SRC_TEST="do"
