# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=RDROUSIES
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Authenticate a user using a CHAP login system."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.650.0
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Plugin-Authentication
	virtual/perl-Digest
	virtual/perl-Test-Simple
"
DEPEND="$RDEPEND
	dev-perl/Module-Build"

PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
SRC_TEST=do
