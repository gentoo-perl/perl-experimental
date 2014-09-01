# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CREAMYG
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="Stop words for several languages."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND=""
DEPEND=""
PERL_RM_FILES=(
	t/98-TestPod.t
	t/99-TestPodCoverage.t
)
SRC_TEST=do
