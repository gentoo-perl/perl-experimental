# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="DEPRECATED Dispatch XMLRPC methods with Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.66
	>=dev-perl/RPC-XML-0.69
"

pkg_setup() {
	ewarn "This ebuild is DEPRECATED and will be removed."
}

src_compile() {
	export PERL_EXTUTILS_AUTOINSTALL="--skipdeps"
	perl-module_src_compile
}
