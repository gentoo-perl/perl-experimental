# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="[DEPRECATED] Helper for CDBI Models"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/MRO-Compat
	dev-perl/Class-DBI
	>=dev-perl/Class-DBI-Loader-0.20
"

pkg_setup() {
	ewarn "This module is DEPRECATED"
}
src_prepare() {
	perl_rm_files "t/02pod.t" "t/03podcoverage.t"
	perl-module-src_prepare
}
SRC_TEST=do
