# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RSAVAGE
MODULE_VERSION=0.12
MODULE_A_EXT="tgz"
inherit perl-module

DESCRIPTION="A factory object for dispensing Visitor objects"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# base -> implicit
# Scalar::Util -> perl-Scalar-List-Utils
# Tree::Simple::Visitor -> Tree-Simple
RDEPEND="
	>=virtual/perl-File-Spec-0.600.0
	>=virtual/perl-Scalar-List-Utils-1.100.0
	>=dev-perl/Tree-Simple-1.220.0"
DEPEND="$RDEPEND
	>=dev-perl/Module-Build-0.380.0
	>=dev-perl/Test-Exception-0.150.0
	>=virtual/perl-Test-Simple-0.470.0
"
PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/no-require-podtests.patch"
)
SRC_TEST="do parallel"
