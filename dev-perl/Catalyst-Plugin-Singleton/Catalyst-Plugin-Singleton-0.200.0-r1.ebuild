# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.2
inherit perl-module

DESCRIPTION='DEPRECATED - Singleton to context'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Scalar::Util -> perl-Scalar-List-Utils
RDEPEND="
	dev-perl/MRO-Compat
	virtual/perl-Scalar-List-Utils
"
DEPEND="
	>=virtual/perl-Module-Build-0.390.0
	$RDEPEND
"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST="do"
