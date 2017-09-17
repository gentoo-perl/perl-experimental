# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.18"
inherit perl-module

DESCRIPTION="File storage backend for session data"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Class-Data-Inheritable-0.40.0
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/Cache-Cache-1.20.0
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	>=dev-perl/MRO-Compat-0.100.0
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple
"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
