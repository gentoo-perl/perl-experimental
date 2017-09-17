# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.02
inherit perl-module

DESCRIPTION="Scaling math used in image size constraining (such as thumbnails)"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="$RDEPEND
	test? (
		>=virtual/perl-Test-Simple-0.470.0
		>=virtual/perl-File-Spec-0.820.0
	)"
PERL_RM_FILES=(
	t/97_meta.t
	t/98_pod.t
	t/99_pmv.t
)
SRC_TEST=do
