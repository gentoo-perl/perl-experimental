# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=JOHANL
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Helper for TTControllerLocal Views"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-View-TT
	virtual/perl-Test-Simple
"
DEPEND="$RDEPEND"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
SRC_TEST=do
