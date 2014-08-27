# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=2.01
inherit perl-module

DESCRIPTION="DEPRECATED Dispatch XMLRPC methods with Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.660.0
	>=dev-perl/RPC-XML-0.690.0
"
DEPEND="${RDEPEND}"

pkg_pretend() {
	ewarn "This ebuild is DEPRECATED and will be removed."
}
pkg_postinst() {
	ewarn "This ebuild is DEPRECATED and will be removed."
}
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
