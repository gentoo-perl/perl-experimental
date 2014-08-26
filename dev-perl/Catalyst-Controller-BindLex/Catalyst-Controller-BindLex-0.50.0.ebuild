# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MSTROUT
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Unmaintained, dangerous proof of concept"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Array-RefElem
	dev-perl/Catalyst-Runtime
	dev-perl/Devel-Caller
	dev-perl/Devel-LexAlias
	dev-perl/PadWalker
	dev-perl/Test-use-ok
"
DEPEND="$RDEPEND"

src_prepare() {
	perl_rm_files t/02pod.t t/03podcoverage.t
	perl-module_src_prepare
}
SRC_TEST=do
