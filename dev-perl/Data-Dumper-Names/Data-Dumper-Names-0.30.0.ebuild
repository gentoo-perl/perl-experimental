# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=OVID
MODULE_VERSION="0.03"
inherit perl-module

DESCRIPTION="See your data in the nude"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
RDEPEND="
	>=dev-perl/PadWalker-0.130.0
	virtual/perl-Scalar-List-Utils
	virtual/perl-Test-Simple
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
"
